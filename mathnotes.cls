\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mathnotes}[2020/03/23]
\LoadClass[11pt]{book}

% Set document dimensions
\usepackage[margin=1in, headheight=14pt]{geometry}
% Header and footer
\usepackage{fancyhdr}
% Reference last page number
\usepackage{lastpage}
% Font
\usepackage{mathpazo}
% Enable colors
\usepackage[usenames, dvipsnames, svgnames]{xcolor}
% Boxed environments
\usepackage[framemethod=TikZ]{mdframed}
% Theorem environments
\usepackage{amsthm, thmtools}
% Useful math mode tools
\usepackage{mathtools} % also loads amsmath
% Additional math mode symbols
\usepackage{amssymb}
% If-statments in macros
\usepackage{xparse}
% Enable optional argument to enumerate environment which determines counter
% style
\usepackage{enumerate}

% User options
\newcommand*{\name}[1]{\def\@name{#1}}
\newcommand*{\notetitle}[1]{\def\@notetitle{#1}}
\newcommand*{\notedate}[1]{\def\@notedate{#1}}

% Header and footer configuration
\pagestyle{fancy}
\lhead{\@name}
\chead{\@notetitle}
\rhead{\@notedate}
\lfoot{}
\cfoot{}
\rfoot{Page\ \thepage\ of\ \pageref{LastPage}}
% Add footer line
\renewcommand\footrulewidth{0.4pt}
% No paragraph indentation
\setlength{\parindent}{0pt}
% Spacing between lines
\linespread{1.1}

% Command for inserting blank page
\newcommand\blankpage{
  \thispagestyle{empty}
  \addtocounter{page}{-1}
  \newpage}

% Word definitions
\newcommand{\define}[1]{\underline{\textbf{#1}}}

% Other shortcuts
\newcommand{\NN}{\mathbb{N}}
\newcommand{\ZZ}{\mathbb{Z}}
\newcommand{\QQ}{\mathbb{Q}}
\newcommand{\RR}{\mathbb{R}}
\newcommand{\CC}{\mathbb{C}}

\newcommand{\pn}[1]{\left( #1 \right)}

%% Context environment definitions

\pgfdeclarehorizontalshading{mdgreenbg}{100bp}
{color(0bp)=(SeaGreen!15); color(50bp)=(White); color(100bp)=(SeaGreen!15)}

\mdfdefinestyle{mdgreenbox}{%
  topline=false,
  bottomline=false,
  apptotikzsetting={\tikzset{mdfbackground/.append style ={%
    shading = mdgreenbg}}},
	linewidth=1pt,
	skipabove=12pt,
	skipbelow=2pt,
	linecolor=PineGreen,
	nobreak=true,
}

\declaretheoremstyle[
  headfont=\bfseries\color{Emerald},
  mdframed={style=mdgreenbox},
  headpunct={\\[3pt]},
  postheadspace={0pt},
]{thmgreenbox}

\pgfdeclarehorizontalshading{mdcyanbg}{100bp}
{color(0bp)=(CornflowerBlue!15); color(50bp)=(White); color(100bp)=(CornflowerBlue!15)}

\mdfdefinestyle{mdcyanbox}{%
  topline=false,
  bottomline=false,
  apptotikzsetting={\tikzset{mdfbackground/.append style ={%
    shading = mdcyanbg}}},
  linewidth=1pt,
  skipabove=12pt,
  skipbelow=2pt,
  linecolor=RoyalBlue,
  nobreak=true,
}

\declaretheoremstyle[
  headfont=\bfseries\color{Cerulean},
  mdframed={style=mdcyanbox},
  headpunct={\\[3pt]},
  postheadspace={0pt},
]{thmcyanbox}

\pgfdeclarehorizontalshading{mdbluebg}{100bp}
{color(0bp)=(BlueViolet!15); color(50bp)=(White); color(100bp)=(BlueViolet!15)}

\mdfdefinestyle{mdbluebox}{%
  topline=false,
  bottomline=false,
  apptotikzsetting={\tikzset{mdfbackground/.append style ={%
    shading = mdbluebg}}},
  linewidth=1pt,
  skipabove=12pt,
  skipbelow=2pt,
  linecolor=MidnightBlue,
  nobreak=true,
}

\declaretheoremstyle[
  headfont=\bfseries\color{NavyBlue},
  mdframed={style=mdbluebox},
  headpunct={\\[3pt]},
  postheadspace={0pt},
]{thmbluebox}

\pgfdeclarehorizontalshading{mdpurplebg}{100bp}
{color(0bp)=(Orchid!15); color(50bp)=(White); color(100bp)=(Orchid!15)}

\mdfdefinestyle{mdpurplebox}{%
  topline=false,
  bottomline=false,
  apptotikzsetting={\tikzset{mdfbackground/.append style ={%
    shading = mdpurplebg}}},
  linewidth=1pt,
  skipabove=12pt,
  skipbelow=2pt,
  linecolor=DarkOrchid,
  nobreak=true,
}

\declaretheoremstyle[
  headfont=\bfseries\color{Plum},
  mdframed={style=mdpurplebox},
  headpunct={\\[3pt]},
  postheadspace={0pt},
]{thmpurplebox}

\theoremstyle{definition}
\declaretheorem[name=\color{Red}\bfseries Question, numbered=no]{ques}
\declaretheorem[name=\color{Emerald}\bfseries Definition, numbered=no]{defi}
\declaretheorem[style=thmgreenbox, name=Definition, numbered=no]{bdefi}
\declaretheorem[name=\color{NavyBlue}\bfseries Theorem, numbered=no]{thm}
\declaretheorem[style=thmbluebox, name=Theorem, numbered=no]{bthm}
\declaretheorem[name=\color{Cerulean}\bfseries Proof, numbered=no]{pf}
\declaretheorem[name=\color{Cerulean}\bfseries Proof Idea, numbered=no]{pfi}
\declaretheorem[style=thmcyanbox, name=Proof, numbered=no]{bpf}
\declaretheorem[name=\color{Dandelion}\bfseries Example, numbered=no]{ex}
\declaretheorem[name=\color{Plum}\bfseries Proposition, numbered=no]{prop}
\declaretheorem[style=thmpurplebox, name=Proposition, numbered=no]{bprop}
\declaretheorem[name=\color{Blue}\bfseries Note, numbered=no]{note}
\declaretheorem[name=\color{Gray}\bfseries Corollary, numbered=no]{cor}
