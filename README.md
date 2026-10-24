# NWAFU Undergraduate Thesis Proposal LaTeX Template

A XeLaTeX template for the undergraduate thesis (design) proposal of **Northwest A&F University (NWAFU)**. It reproduces the structure and principal typography of the university's Chinese proposal form, including the cover page, body sections, risk assessment, figures, tables, equations, footnotes, and author–year references.

[中文说明](README.zh-CN.md)

## Features

- Chinese typesetting with `ctex` and XeLaTeX.
- Automatic font fallback for TeX Live, MiKTeX, and common Windows installations.
- A4, two-sided layout with NWAFU proposal margins and heading hierarchy.
- Cover-page macros for student, programme, supervisor, and submission details.
- Built-in risk-assessment section and examples of figures, tables, equations, and citations.

## Requirements

Install a current TeX distribution with XeLaTeX and the following packages:

- TeX Live 2022 or later, or a recent MiKTeX installation
- `ctex`, `fontspec`, `geometry`, `natbib`, `hyperref`, `booktabs`, `tabularx`, and their dependencies
- A Chinese font. If SimSun/SimHei/KaiTi are unavailable, the class falls back to Fandol fonts; Times New Roman falls back to TeX Gyre Termes.

## Use as a template

1. Download or clone this repository.
2. Copy `nwafu-proposal.tex`, `nwafu-proposal.cls`, `risk-assessment.tex`, and the `assets/` directory into a new working directory (or keep the repository as a project dependency).
3. Edit the metadata commands at the beginning of `nwafu-proposal.tex`.
4. Replace the instructional text, sample references, and example figure/table with your own content. Complete the risk assessment whenever the project involves laboratory work.
5. Compile twice to resolve references:

   ```bash
   xelatex -interaction=nonstopmode -halt-on-error nwafu-proposal.tex
   xelatex -interaction=nonstopmode -halt-on-error nwafu-proposal.tex
   ```

   For a clean build, use `latexmk -xelatex nwafu-proposal.tex`. The distribution must provide `footmisc` (used for per-page footnote numbering).

### Overleaf

Create a new blank project, upload the repository files (including `assets/university.png`), set the compiler to **XeLaTeX**, and set `nwafu-proposal.tex` as the main document.

### As a reusable local class

Keep `nwafu-proposal.cls` and `assets/university.png` in the same directory as the document, or install the class in a personal TeX tree (for example, `~/texmf/tex/latex/nwafu-proposal/`). The image remains a project asset and should be copied into the document's `assets/` directory. The class is loaded with:

```tex
\documentclass{nwafu-proposal}
```

## File guide

| File | Purpose |
| --- | --- |
| `nwafu-proposal.tex` | Editable proposal example and document entry point |
| `nwafu-proposal.cls` | Layout, fonts, cover page, headings, captions, and numbering |
| `risk-assessment.tex` | Laboratory risk-assessment form included by the example |
| `assets/university.png` | NWAFU wordmark used on the cover |
| `.github/labels.yml` | Repository issue-label definitions |

## Notes on compliance

This project is an independent LaTeX implementation based on the publicly circulated NWAFU proposal form. LaTeX font metrics and page-breaking rules differ from Word, so pixel-identical output is not guaranteed. Confirm the final cover and formatting requirements with your college before submission. The two bibliography entries in the example are formatting demonstrations and must be replaced and checked against the sources actually cited.

## License

The template source is released under the MIT License. The university wordmark in `assets/university.png` is included only for producing the form and remains subject to the university's applicable trademark and usage rules. See [LICENSE](LICENSE).

## Repository labels

After creating the GitHub repository, run `./.github/apply-labels.sh owner/repository` with an authenticated GitHub CLI (`gh auth login`) to create or update the labels defined in `.github/labels.yml`.
