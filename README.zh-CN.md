# 西北农林科技大学本科毕业论文（设计）开题报告 LaTeX 模板

这是一个面向**西北农林科技大学（NWAFU）本科毕业论文（设计）开题报告**的 XeLaTeX 模板，重建了学校中文开题报告的封面、正文结构、风险评估、图表、公式、脚注和著者—年份制参考文献格式。

[English documentation](README.md)

## 功能

- 使用 `ctex` 和 XeLaTeX 进行中文排版。
- 适配 TeX Live、MiKTeX 及常见 Windows 字体环境，并提供字体回退。
- A4 双面排版、正文页边距、标题层级和图表编号已预设。
- 封面信息通过命令集中填写。
- 提供实验室风险评估表，以及图、表、公式和引用示例。

## 环境要求

需要安装带 XeLaTeX 的 TeX 发行版：TeX Live 2022 及以上或较新的 MiKTeX，并安装 `ctex`、`fontspec`、`geometry`、`natbib`、`hyperref`、`booktabs`、`tabularx` 及其依赖。找不到宋体、黑体、楷体时会回退到 Fandol 字体；找不到 Times New Roman 时会回退到 TeX Gyre Termes。

## 使用模板

1. 下载或克隆本仓库。
2. 将 `nwafu-proposal.tex`、`nwafu-proposal.cls`、`risk-assessment.tex` 和 `assets/` 目录复制到论文工作目录，也可以直接在仓库中编辑。
3. 编辑 `nwafu-proposal.tex` 开头的学号、题目、学院、专业、班级、姓名、指导教师和日期。
4. 替换正文提示语、示例参考文献和示例图表。涉及实验室工作的课题应完成风险评估。
5. 连续编译两次以更新交叉引用：

   ```bash
   xelatex -interaction=nonstopmode -halt-on-error nwafu-proposal.tex
   xelatex -interaction=nonstopmode -halt-on-error nwafu-proposal.tex
   ```

   也可以使用 `latexmk -xelatex nwafu-proposal.tex` 自动完成多轮编译。发行版还需提供 `footmisc` 宏包（用于按页重新计数脚注）。

### Overleaf

新建空白项目，上传仓库文件（包括 `assets/university.png`），将编译器设为 **XeLaTeX**，并将 `nwafu-proposal.tex` 设为主文档，无需本地安装 TeX。

### 作为可复用的本地模板库

将 `nwafu-proposal.cls` 和 `assets/university.png` 与主文档放在同一目录即可；也可把类文件安装到个人 TeX 树（例如 `~/texmf/tex/latex/nwafu-proposal/`）。校名图片仍应放在论文项目的 `assets/` 目录中。文档中使用：

```tex
\documentclass{nwafu-proposal}
```

## 文件说明

| 文件 | 用途 |
| --- | --- |
| `nwafu-proposal.tex` | 可编辑的示例文档和编译入口 |
| `nwafu-proposal.cls` | 页面、字体、封面、标题、图表和编号设置 |
| `risk-assessment.tex` | 由示例文档引入的实验室风险评估表 |
| `assets/university.png` | 封面使用的校名图片 |
| `.github/labels.yml` | GitHub Issue 标签定义 |

## 说明

本项目是根据西北农林科技大学教务处发布的《关于做好2027届本科毕业论文（设计）工作的通知》（https://jiaowu.nwsuaf.edu.cn/tzggB/67475cb49cb047e3ba2e3ac0c0de6e4d_mobile.htm）独立实现的 LaTeX 模板。LaTeX 与 Word 的字体度量和分页机制不同，无法保证逐像素一致；提交前请向学院确认最终封面和格式要求。示例中的两条参考文献仅用于演示格式，应替换为实际引用并核对著录信息。

## 许可证

模板源代码采用 MIT 许可证。`assets/university.png` 仅用于生成开题报告，其校名标识仍受学校适用的商标及使用规定约束。详见 [LICENSE](LICENSE)。

## 仓库标签

创建 GitHub 仓库并完成 `gh auth login` 后，运行 `./.github/apply-labels.sh owner/repository`，即可创建或更新 `.github/labels.yml` 中定义的 Issue 标签。
