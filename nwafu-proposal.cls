\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nwafu-proposal}[2026/10/24 NWAFU undergraduate proposal]
\LoadClass[UTF8,a4paper,twoside,zihao=-4,fontset=none]{ctexart}
\RequirePackage{fontspec}
\IfFontExistsTF{SimSun}{\setCJKmainfont{SimSun}[AutoFakeBold=2]}{\setCJKmainfont{FandolSong-Regular}[BoldFont=FandolSong-Bold]}
\IfFontExistsTF{SimHei}{\setCJKsansfont{SimHei}}{\setCJKsansfont{FandolHei-Regular}}
\IfFontExistsTF{KaiTi}{\setCJKfamilyfont{kai}{KaiTi}[AutoFakeBold=2]}{\setCJKfamilyfont{kai}{FandolKai-Regular}}
\IfFontExistsTF{Times New Roman}{\setmainfont{Times New Roman}}{\setmainfont{TeX Gyre Termes}}
\RequirePackage[top=3cm,bottom=2.5cm,inner=2.6cm,outer=2.6cm,headheight=14pt,headsep=\dimexpr1cm-14pt\relax,footskip=.75cm]{geometry}
\RequirePackage{graphicx,amsmath,amssymb,booktabs,tabularx,array}
\RequirePackage{caption}
\RequirePackage[perpage]{footmisc}
\RequirePackage[authoryear,round]{natbib}
\RequirePackage[hidelinks]{hyperref}
\pagestyle{plain}
\setlength{\parindent}{2em}
\setlength{\parskip}{0pt}
\AtBeginDocument{\fontsize{12pt}{20pt}\selectfont}
\ctexset{
 section={format=\sffamily\zihao{-3}\raggedright,name={},number=\arabic{section},aftername=\quad,beforeskip=20pt,afterskip=10pt},
 subsection={format=\sffamily\zihao{4}\raggedright,aftername=\quad,beforeskip=10pt,afterskip=0pt},
 subsubsection={format=\sffamily\zihao{-4}\raggedright,aftername=\quad,beforeskip=0pt,afterskip=0pt}}
\numberwithin{equation}{section}
\numberwithin{figure}{section}
\numberwithin{table}{section}
\renewcommand{\theequation}{\thesection-\arabic{equation}}
\renewcommand{\thefigure}{\thesection-\arabic{figure}}
\renewcommand{\thetable}{\thesection-\arabic{table}}
\DeclareCaptionFont{proposal}{\fontsize{10.5pt}{18pt}\selectfont}
\captionsetup{font=proposal,labelsep=quad,skip=10pt,justification=centering}
\captionsetup[table]{position=top}
\setlength{\textfloatsep}{10pt}
\setlength{\intextsep}{10pt}
\setlength{\heavyrulewidth}{1.5pt}
\setlength{\lightrulewidth}{1pt}
\renewcommand{\footnotesize}{\fontsize{9pt}{11pt}\selectfont}
\IfFontExistsTF{SimSun}{\newfontfamily\footmarkfont{SimSun}}{\newfontfamily\footmarkfont{FandolSong-Regular}}
\renewcommand{\thefootnote}{{\footmarkfont\ifcase\value{footnote}\or ①\or ②\or ③\or ④\or ⑤\or ⑥\or ⑦\or ⑧\or ⑨\or ⑩\else\arabic{footnote}\fi}}
\renewcommand{\bibsection}{\section{参考文献}}
\renewcommand{\bibfont}{\fontsize{10.5pt}{16pt}\selectfont}
\setlength{\bibhang}{21pt}
\setlength{\bibsep}{0pt}
\newcommand{\blankfield}[2]{\underline{\makebox[#1][c]{\strut #2}}}
\newcommand{\coverrow}[2]{\makebox[7em][s]{#1}：\blankfield{7cm}{#2}\par\vspace{12pt}}
\newcommand{\makeproposalcover}{%
 \begin{titlepage}
 \newgeometry{top=2.54cm,bottom=2.54cm,left=3.175cm,right=3.175cm}
 \thispagestyle{empty}
 \begin{flushright}\CJKfamily{kai}\bfseries\zihao{4} 学号：\blankfield{3.5cm}{\studentid}\end{flushright}
 \vspace*{1.6cm}
 \begin{center}
 \includegraphics[width=11.55cm,height=2.25cm]{assets/university.png}\par
 \vspace{.4cm}
 {\fontsize{18pt}{26pt}\selectfont \underline{\graduationyear}\ 届本科生毕业论文（设计）开题报告\par}
 \vspace{1cm}
 {\sffamily\fontsize{22pt}{30pt}\selectfont 题目：\parbox[t]{10cm}{\centering\reporttitle\par\vspace{2pt}\hrule}\par}
 \vspace{2cm}
 {\fontsize{14pt}{22pt}\selectfont
 \coverrow{学院}{\college}
 \coverrow{专业}{\major}
 \coverrow{年级班级}{\studentclass}
 \coverrow{学生姓名}{\studentname}
 \coverrow{指导教师}{\supervisor}
 \coverrow{合作指导教师}{\cosupervisor}
 \coverrow{开题论证日期}{\proposaldate}}
 \end{center}
 \end{titlepage}
 \restoregeometry
 \setcounter{page}{1}}
\newcommand{\makereporttitle}{\begin{center}\sffamily\fontsize{22pt}{25pt}\selectfont\reporttitle\par\end{center}}
\newcommand{\riskcheck}{\ensuremath{\square}\,}
