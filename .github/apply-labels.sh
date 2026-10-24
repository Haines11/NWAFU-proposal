#!/usr/bin/env bash
set -euo pipefail

repo="${1:-$(gh repo view --json nameWithOwner --jq .nameWithOwner)}"
labels_file="$(cd "$(dirname "$0")" && pwd)/labels.yml"

while IFS= read -r line; do
  case "$line" in
    '- name:'*) name="${line#- name: }";;
    '  color:'*) color="${line#  color: }";;
    '  description:'*)
      description="${line#  description: }"
      gh label create "$name" --repo "$repo" --color "$color" --description "$description" --force
      ;;
  esac
done < "$labels_file"
