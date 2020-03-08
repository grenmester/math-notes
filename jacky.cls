\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jacky}[2020/03/09]

\LoadClass[11pt]{book}

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

\newcommand{\define}[1]{\underline{\textbf{#1}}}

\newcommand{\pn}[1]{\left( #1 \right)}
\newcommand{\hmap}[3][\varphi]{%
    #1:#2\rightarrow#3}
\renewcommand{\ker}[1][(\varphi)]{\text{Ker}#1}
\newcommand{\im}[1][(\varphi)]{\text{Im}#1}
\DeclareMathOperator{\lcm}{lcm}

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
