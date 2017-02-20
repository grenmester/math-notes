\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jacky}[2017/02/20]

\LoadClass[11pt]{book}

\usepackage[margin=1in,headheight=14pt]{geometry}
\usepackage{amsfonts, amsmath, amssymb, enumerate, fancyhdr, gensymb, lastpage, mathtools}
\usepackage[usenames, dvipsnames, svgnames]{xcolor}
\usepackage{amsthm, thmtools}
\usepackage[framemethod=TikZ]{mdframed}
\usepackage{mathpazo}
\usepackage{tikz-cd}

\newcommand{\define}[1]{\underline{\textbf{#1}}}
\newcommand{\pn}[1]{\left( #1 \right)}
\newcommand{\hmap}[3][\varphi]{%
    #1:#2\rightarrow#3}
\renewcommand{\ker}[1][(\varphi)]{\text{Ker}#1}
\newcommand{\im}[1][(\varphi)]{\text{Im}#1}

\DeclareMathOperator{\lcm}{lcm}

\mdfdefinestyle{mdgreenbox}{%
	roundcorner=10pt,
	linewidth=1pt,
	skipabove=12pt,
	innerbottommargin=9pt,
	skipbelow=2pt,
	linecolor=PineGreen,
	nobreak=true,
	backgroundcolor=SeaGreen!5,
}

\declaretheoremstyle[
headfont=\bfseries\color{Emerald},
mdframed={style=mdgreenbox},
headpunct={\\[3pt]},
postheadspace={0pt},
]{thmgreenbox}

\mdfdefinestyle{mdcyanbox}{%
	roundcorner=10pt,
	linewidth=1pt,
	skipabove=12pt,
	innerbottommargin=9pt,
	skipbelow=2pt,
	linecolor=RoyalBlue,
	nobreak=true,
	backgroundcolor=CornflowerBlue!5,
}

\declaretheoremstyle[
headfont=\bfseries\color{Cerulean},
mdframed={style=mdcyanbox},
headpunct={\\[3pt]},
postheadspace={0pt},
]{thmcyanbox}

\mdfdefinestyle{mdbluebox}{%
	roundcorner=10pt,
	linewidth=1pt,
	skipabove=12pt,
	innerbottommargin=9pt,
	skipbelow=2pt,
	linecolor=MidnightBlue,
	nobreak=true,
	backgroundcolor=BlueViolet!5,
}

\declaretheoremstyle[
headfont=\bfseries\color{NavyBlue},
mdframed={style=mdbluebox},
headpunct={\\[3pt]},
postheadspace={0pt},
]{thmbluebox}

\mdfdefinestyle{mdpurplebox}{%
	roundcorner=10pt,
	linewidth=1pt,
	skipabove=12pt,
	innerbottommargin=9pt,
	skipbelow=2pt,
	linecolor=DarkOrchid,
	nobreak=true,
	backgroundcolor=Orchid!5,
}

\declaretheoremstyle[
headfont=\bfseries\color{Plum},
mdframed={style=mdpurplebox},
headpunct={\\[3pt]},
postheadspace={0pt},
]{thmpurplebox}

\theoremstyle{definition}
\declaretheorem[name=\color{Emerald}\bfseries Definition, numbered=no]{defi}
\declaretheorem[style=thmgreenbox, name=Definition, numbered=no]{bdefi}
\declaretheorem[name=\color{NavyBlue}\bfseries Theorem, numbered=no]{thm}
\declaretheorem[style=thmbluebox, name=Theorem, numbered=no]{bthm}
\declaretheorem[name=\color{Cerulean}\bfseries Proof, numbered=no]{pf}
\declaretheorem[style=thmcyanbox, name=Proof, numbered=no]{bpf}
\declaretheorem[name=\color{Dandelion}\bfseries Example, numbered=no]{ex}
\declaretheorem[name=\color{Plum}\bfseries Proposition, numbered=no]{prop}
\declaretheorem[style=thmpurplebox, name=Proposition, numbered=no]{bprop}
\declaretheorem[name=\color{Blue}\bfseries Note, numbered=no]{note}
\declaretheorem[name=\color{Gray}\bfseries Corollary, numbered=no]{cor}
