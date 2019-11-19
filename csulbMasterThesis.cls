% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
% CSULB Master Thesis											
% v1.0 - Sep 2019
%
% Written by Arya Daroui, daroui.arya@gmail.com
% This work is under the MIT License
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 

% Base
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{csulbMasterThesis}[2019/09/18 v0.8]
\AtEndOfClass{\RequirePackage{microtype}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions*
\LoadClass{article}

% General Packages
\RequirePackage{graphicx}
\RequirePackage{xpatch}
\RequirePackage[table]{xcolor}
% \RequirePackage{tabu}
\RequirePackage[framemethod = tikz]{mdframed}
\RequirePackage{calc}
\RequirePackage{listings}

% Margins
\RequirePackage[
	top = 1in,
	bottom = 1in,
	left= 1in,
	right = 1in,
	letterpaper
]{geometry}

% Font
% \RequirePackage{fontspec}
% \RequirePackage{times}
\RequirePackage{mathptmx}
\RequirePackage{amsmath, amsfonts, amssymb}
% \newfontfamily{\light}[UprightFont={* Light}]{Helvetica Neue}
% \newfontfamily{\mono}[Scale=.95]{Consolas}
% \setmainfont[Ligatures=TeX]{Times}
% \setsansfont{Helvetica Neue}
% \setmonofont[Scale=.95]{Consolas}
% \lstset{
%   basicstyle=\ttfamily,
% }


% Figures and Tables Captions
\RequirePackage[labelfont={bf,sf,small}, labelsep=period, justification=raggedright]{caption}
\setlength{\abovecaptionskip}{3pt}
\setlength{\belowcaptionskip}{0pt}

% Text Positioning
\RequirePackage[absolute]{textpos}
\setlength{\TPHorizModule}{1in}
\setlength{\TPVertModule}{1in}

% Titlepage
\renewcommand{\title}[1]{\def\title{#1}}
\newcommand{\dept}[1]{\def\dept{#1}}
\newcommand{\degree}[1]{\def\degree{#1}}
\newcommand{\committee}[1]{\def\committee{#1}}
\newcommand{\designee}[1]{\def\designee{#1}}
\renewcommand{\author}[1]{\def\author{#1}}
\newcommand{\undergrad}[1]{\def\undergrad{#1}}
\renewcommand{\date}[1]{\def\date{#1}}
% \newcommand\invPyramid[1]{%
% 	\vbox{%
% 	\hsize=6.5in
% 	\parindent=0pt
% 	\leftskip=0pt plus.5fil
% 	\rightskip=0pt plus-0.5fil
% 	% \parfillskip=0pt plus1fil
% 	\emergencystretch=1in
% 	\parshape5
% 	0.0in 6.5in
% 	0.5in 5.5in
% 	1.0in 4.5in
% 	1.5in 3.5in
% 	2.0in 2.5in
% 	% 1.25in 2.00in
% 	% \bfseries
% 	% \strut
% 	#1%
% }%
% }

\RequirePackage{setspace}


\renewcommand{\titlepage}{
	\large
	\begin{center}
		\begin{doublespacing}
			% \invPyramid{\textbf{\textsc{\title}}}
			\textbf{\textsc{\title}}

			\vspace{0.6in}

			A THESIS \\
			Presented to \dept\\
			California State University, Long Beach

			\vspace{0.6in}

			In Partial Fulfillment\\
			of the Requirements for the Degree\\
			\degree

			\vspace{0.6in}
		\end{doublespacing}
			Committee Members:\\[\baselineskip]
		\committee

		\begin{doublespacing}
			College Designee:\\
			\designee\\
		\end{doublespacing}
		\vspace{\fill}
		By \author\\[\baselineskip]
		\undergrad\\[\baselineskip]
		\date
	\end{center}
	\normalsize

	\thispagestyle{empty}
	\null\newpage
	\setcounter{page}{1}
}

% Header and Footer
% \RequirePackage{fancyhdr}
% \pagestyle{fancy}
% \lhead{}
% \chead{}
% \rhead{}
% \lfoot{}
% \cfoot{}
% \rfoot{\color{black}{\sffamily{\thepage}}}
% \xpretocmd\headrule{\color{darkColor}}{}{\PatchFailed}
% \xpretocmd\footrule{\color{darkColor}}{}{\PatchFailed}
% \renewcommand{\headrulewidth}{1pt}
% \renewcommand{\footrulewidth}{1pt}

% Sections
\RequirePackage[explicit]{titlesec}
\titleformat{\section}
  {\color{white}\large\sffamily\bfseries}
  {}
  {0em}
  {\colorbox{darkColor}{\parbox{\dimexpr\linewidth-2\fboxsep\relax}{{\arabic{section}.\hfil} {\centering #1}}}}
  []
\titleformat{name=\section,numberless}
  {\color{white}\large\sffamily\bfseries}
  {}
  {0em}
  {\colorbox{darkColor}{\parbox{\dimexpr\linewidth-2\fboxsep\relax}{\centering #1}}}
  []  
\titleformat{\subsection}
  {\color{darkColor}\sffamily\bfseries}
  {\thesubsection}
  {0.5em}
  {#1}
  []
\titleformat{\subsubsection}
  {\sffamily\small\bfseries}
  {\thesubsubsection}
  {0.5em}
  {#1}
  []    

% Environments and commands

\newenvironment{dent}
{
	\begin{mdframed}[leftline=true, backgroundcolor=lightColor, innerleftmargin=.11in, linewidth=1.2pt, topline=false, bottomline=false, rightline=false, linecolor = darkColor]
}{		
	\end{mdframed}
}

\newenvironment{dent2}[1]
{
	\begin{mdframed}[hidealllines=true, backgroundcolor=lightColor, innerleftmargin=0in]
		\begin{tabular}{l !{\color{darkColor}\vline width 1.2pt} p{\linewidth - \widthof{#1}*\real{1.5} - 0.24in}}
			\color{darkColor}{\Large{#1}} &
}{		
		\end{tabular}
	\end{mdframed}
}



\newenvironment{tableLight}[2]
{
	\begin{table}[!htbp]
		\centering

		\if\relax\detokenize{#1}\relax
        \else
        \caption{#1}
        \fi
		\begin{tabular}{#2}
			\hline
			\rowcolor{lightColor}
		
}{		
		\hline
		\end{tabular}
		% \label{tab:#1}
	\end{table}
}

\newenvironment{tableDark}[2]
{
	\begin{table}[!htbp]
		\centering
		\if\relax\detokenize{#1}\relax
        \else
        \caption{#1}
		\fi
		\rowcolors{2}{}{lightColor}
		\begin{tabular}{#2}
			\hline
			\rowcolor{darkColor}
}{		
		\hline
		\end{tabular}
		% \label{tab:#1}
	\end{table}
}

\newcommand{\fig}[2]{
	\begin{figure}[!htbp]
		\centering
		\includegraphics[width=\linewidth]{#1}
		\caption{#2}
	\end{figure}
}

\newcommand{\plot}[2]{
	\begin{figure}[!htbp]
		\centering
		\caption{#1}
		\includegraphics[width=\linewidth]{#2}
	\end{figure}
}

\lstnewenvironment{code}{
	\lstset{
		basicstyle=\ttfamily,
		frame = lt,
		framerule=1.2pt,
		backgroundcolor=\color{lightColor},
		numbers=left,
		xleftmargin=.21in,
		rulecolor=\color{darkColor},
		tabsize=4,
		framextopmargin= 1pt,
	}
}{}

% need figwide
% trash for now
% \begin{dent}
% 	\begin{lstlisting}[basicstyle=\ttfamily, frame = leftline, framerule=1pt, backgroundcolor=\color{lightColor}, numbers=left, xleftmargin=.14in,  rulecolor=\color{darkColor}, framexleftmargin=2pt, ]
% foo
% bar
% 	\end{lstlisting}
% \end{dent}