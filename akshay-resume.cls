% Intro Options
\ProvidesClass{akshay-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}


\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}


% Package Imports
\usepackage[hmargin=1.25cm, vmargin=1.5cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[english]{babel}
\usepackage[english]{isodate}
\usepackage{fontspec,xltxtra,xunicode}

% Color definitions
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{777777}
\definecolor{gray}{HTML}{777777}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary]{Roboto Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Roboto Light}

% Name command
\newcommand{\namesection}[5]{
\begin{minipage}[t]{0.75\linewidth}
{
	{\fontspec{Roboto Light}\fontsize{35pt}{10cm}\selectfont #1} \,\,
	{\fontspec{Roboto}\fontsize{35pt}{10cm}\selectfont #2}
	\vspace{0.6em}\\
	{\fontspec{Roboto Light}\fontsize{14pt}{10cm}\selectfont #3}
}
\end{minipage}
\hfill
\begin{minipage}[t]{0.25\linewidth} 
{

\raisebox{-0.7mm}{\includegraphics[width=5mm]{linkedin-icon.png}} \, 
\href{https://linkedin.com/in/#4}{\fontsize{10pt}{10pt}\selectfont/#4} 

\vspace{1mm}

\raisebox{-0.7mm}{\includegraphics[width=5mm]{github-icon.png}} \, 
\href{https://github.com/#5}{\fontsize{10pt}{10pt}\selectfont/#5} 
}
\end{minipage}

}

% Headings command
\newcommand{\resumesection}[1]{
\vspace{1.4em}
{\color{headings}\fontspec{Roboto Light}\fontsize{14pt}{14pt}\selectfont\raggedright{#1}}{\newline}
}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec{Roboto}\fontsize{12pt}{12pt}\selectfont}{}{0em}{}

\newcommand{\regtext}[1]{{\color{black}\fontspec{Roboto}\selectfont#1}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-1em}
\begin{itemize}[leftmargin=*]\itemsep1pt \parskip0pt \parsep0pt % \fontsize{10pt}{10pt}\selectfont
}
{\end{itemize}\vspace{-\topsep}}


\newcommand{\minicventry}[3]{
% the title 
\color{subheadings}\fontspec{Roboto Bold}\fontsize{10pt}{10pt}\selectfont{#1}\normalfont
\,
% the date
\fontspec{Roboto Light}\fontsize{10pt}{10pt}\selectfont{#2}
\newline
% if a subtitle exists
\color{subheadings}\raggedright\fontspec{Roboto Light}\fontsize{10pt}{10pt}\selectfont{#3}\normalfont
\vspace{0.45em}
}


\newcommand{\cventry}[4]{
% the title 
\color{subheadings}\fontspec{Roboto Bold}\fontsize{10pt}{10pt}\selectfont{#1}\normalfont
\,
% the date
\fontspec{Roboto Light}\fontsize{10pt}{10pt}\selectfont{#2}
\newline
% if a subtitle exists
\color{subheadings}\raggedright\fontspec{Roboto Light}\fontsize{10pt}{10pt}\selectfont{#3}\normalfont
\vspace{0.5em}
% job details

{\fontsize{10pt}{10pt}\selectfont #4\normalfont}
\vspace{1.4em}
}
