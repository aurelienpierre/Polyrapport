\NeedsTeXFormat{LaTeX2e}
 
\ProvidesClass{polyrapport}[2013/11/28]

%  Copyright (C) 2013 - Aurélien PIERRE - aurelien@aurelienpierre.com - https://aurelienpierre.com

% Cette classe LaTeX a été conçue pour la rédaction des rapports en conformité avec les exigences du cours 
% MEC1110 - Projet Intégrateur, du département de Génie Mécanique de l'École Polytechnique de Montréal.

% Cette classe est mise à disposition selon les termes de la licence GNU/GPL version 3, jointe dans ce répertoire,
% contenant la classe et les modèles. Ce programme vient sans aucune garantie et son utilisation est placée 
% SOUS VOTRE RESPONSABILITÉ.

% Cette classe et tous les modèles joints sont partagés dans le but d'encourager l'utilisation et la diffusion
% des logiciels libres en ingénierie. Utilisez la et partagez la sans modération.

% Pour tout problème ou pour toute question, contactez moi à l'adresse ci-dessus.

% classe de base
 
\LoadClass[12pt,letter,twoside, openright]{report}
 
% extensions
 
\RequirePackage{etex}
\RequirePackage{hyperref}
\hypersetup{
	pdfproducer = {LaTeX avec Polyrapport par Aur\'elien PIERRE},
	pdfcreator = {LaTeX avec Polyrapport par Aur\'elien PIERRE},
    bookmarks=true,         % show bookmarks bar?
    pdftoolbar=true,        % show Acrobat’s toolbar?
    pdfmenubar=true,        % show Acrobat’s menu?
    pdffitwindow=true,     % window fit to page when opened
    pdfnewwindow=true,      % links in new window
    colorlinks=true,       % false: boxed links; true: colored links
    linkcolor=black,          % color of internal links
    citecolor=black,        % color of links to bibliography
    filecolor=black,      % color of file links
    urlcolor=black,           % color of external links
    linkbordercolor={1 1 1}, 	%color of frame around internal links (if colorlinks=false)
	citebordercolor={1 1 1}, 	%color of frame around citations
	urlbordercolor={1 1 1} 	%color of frame around URL links
}
	\urlstyle{same}
\RequirePackage[utf8]{inputenc}
\RequirePackage[polutonikogreek, english,  francais]{babel}
\RequirePackage{lscape}
\RequirePackage{fancybox}
\RequirePackage{wrapfig}
\RequirePackage{setspace}

 % Tableaux
 
\RequirePackage[table]{xcolor}
\RequirePackage{multirow, multicol, graphicx, array, tabularx, tabu , booktabs, makecell , tablefootnote}
	\renewcommand{\arraystretch}{1.309}
\tabulinesep = 2mm
 
% Paquets maths

\RequirePackage{amsmath , amssymb , amsfonts}
\RequirePackage[squaren,Gray]{SIunits}

%  

\RequirePackage{pdfpages,afterpage}

% Graphiques
\RequirePackage{tikz}
\usetikzlibrary{backgrounds,calc,positioning,arrows}
\pgfdeclarelayer{background}
\pgfdeclarelayer{foreground}
\pgfsetlayers{background,main,foreground}
\RequirePackage{gnuplottex}
\RequirePackage{pdftricks}
\begin{psinputs}
   \RequirePackage{pstricks}
   \RequirePackage{multido}
   \RequirePackage{epsfig}
\RequirePackage{pst-grad} % For gradients
\RequirePackage{pst-plot} % For axes
\RequirePackage{pstricks-add}
\end{psinputs}

%% Police 
\RequirePackage[T1]{fontenc}
\renewcommand{\sfdefault}{uop}
\RequirePackage[urw-garamond]{mathdesign}
\RequirePackage[libertine]{newtxmath}
\RequirePackage{libertine}
\RequirePackage{lettrine , fourier-orns , psvectorian}
\RequirePackage[scaled=.8]{beramono}
\RequirePackage{sectsty}
\allsectionsfont{\sffamily \selectfont}

%% Format de papier
\RequirePackage[top=3.5cm, right= 2.5cm, bottom=2.5cm, left=2.5cm, inner= 2.5cm, outer= 2.5cm]{geometry}

%% Veuves et orphelins

\widowpenalty=5000
\clubpenalty=5000
\raggedbottom

%% En-têtes / Pieds de page

\RequirePackage{fancyhdr}
\pagestyle{fancyplain}

\fancyhead{}
\fancyfoot{}
 
\lhead[\footnotesize\thepage]{\footnotesize \sffamily \leftmark}
\rhead[\footnotesize \sffamily \rightmark]{\footnotesize\thepage}

\lfoot[]{}
\cfoot{}
\rfoot[]{}

%% Mise en forme et numérotation des chapitres

\frenchbsetup{CompactItemize=false}

%% Micro contrôles de la police

\RequirePackage[activate=true,protrusion=true,expansion=true,babel=true, tracking=true, kerning=true, spacing=true, babel=true]{microtype}

\RequirePackage{ellipsis}

%%% Bibliographie
\RequirePackage[bibstyle=numeric,citestyle=numeric]{biblatex}
	\defbibheading{bibliography}{\section{Références}}
\RequirePackage{csquotes}

%%% Index
\RequirePackage{makeidx}
\makeindex
\RequirePackage{tocbibind }

%%% Code source

\RequirePackage{listings}
\lstset{ %
  backgroundcolor=\color{black!1},   % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}
  basicstyle=\normalsize\ttfamily,        % the size of the fonts that are used for the code
  breakatwhitespace=false,         % sets if automatic breaks should only happen at whitespace
  breaklines=true,                 % sets automatic line breaking
  captionpos=b,                    % sets the caption-position to bottom
  commentstyle=\itshape\color{blue!20!black!30!green},    % comment style
  deletekeywords={...},            % if you want to delete keywords from the given language
  escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
  extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
  frame=single,                    % adds a frame around the code
  keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
  keywordstyle=\color{blue},       % keyword style
  language=Matlab,                 % the language of the code
  morekeywords={*,...},            % if you want to add more keywords to the set
  numbers=left,                    % where to put the line-numbers; possible values are (none, left, right)
  numbersep=5pt,                   % how far the line-numbers are from the code
  numberstyle=\tiny\color{gray}, % the style that is used for the line-numbers
  rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
  showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
  showstringspaces=false,          % underline spaces within strings only
  showtabs=false,                  % show tabs within strings adding particular underscores
  stepnumber=2,                    % the step between two line-numbers. If it's 1, each line will be numbered
  stringstyle=\color{purple},     % string literal style
  tabsize=2,                       % sets default tabsize to 2 spaces
  title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
}
\lstset{literate=
  {á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
  {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
  {à}{{\`a}}1 {è}{{\'e}}1 {ì}{{\`i}}1 {ò}{{\`o}}1 {ò}{{\`u}}1
  {À}{{\`A}}1 {È}{{\'E}}1 {Ì}{{\`I}}1 {Ò}{{\`O}}1 {Ò}{{\`U}}1
  {ä}{{\"a}}1 {ë}{{\"e}}1 {ï}{{\"i}}1 {ö}{{\"o}}1 {ü}{{\"u}}1
  {Ä}{{\"A}}1 {Ë}{{\"E}}1 {Ï}{{\"I}}1 {Ö}{{\"O}}1 {Ü}{{\"U}}1
  {â}{{\^a}}1 {ê}{{\^e}}1 {î}{{\^i}}1 {ô}{{\^o}}1 {û}{{\^u}}1
  {Â}{{\^A}}1 {Ê}{{\^E}}1 {Î}{{\^I}}1 {Ô}{{\^O}}1 {Û}{{\^U}}1
  {œ}{{\oe}}1 {Œ}{{\OE}}1 {æ}{{\ae}}1 {Æ}{{\AE}}1 {ß}{{\ss}}1
  {ç}{{\c c}}1 {Ç}{{\c C}}1 {ø}{{\o}}1 {å}{{\r a}}1 {Å}{{\r A}}1
  {€}{{\EUR}}1 {£}{{\pounds}}1
}
 
%%% Commandes 
 
%% Redéclaration des titres de chapitres

\renewcommand\chapter{%
					\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{empty}%
                    \global\@topnum\z@
					\@afterindentfalse
                    \secdef\@chapter\@schapter%
                    }
\usepackage[clearempty]{titlesec}
\titleformat{\chapter}[display]{\LARGE \bf \sffamily \selectfont }{ \chaptername~\thechapter \filcenter}{ 12pt }{\LARGE \sc \sffamily \selectfont \filcenter}[\vspace*{12pt}]

\setlength{\parskip}{1em}
%\headheight = 0cm
%\marginparsep = 0pt
%\footskip = 0.5cm
%\hoffset = 0pt
%\voffset = 0pt 
%\headsep = 0.5pt
%\marginparwidth = 0pt
%\voffset = 0pt
%\textwidth = 307pt

\newcommand{\titre}[1]{
\vfill
\begin{spacing}{1.2}
\huge\textsc{#1}
\end{spacing}
\vfill
}

\newenvironment{pagetitre}
	{\cleardoublepage\begin{titlepage}\thispagestyle{empty}\sffamily\selectfont\begin{center}
\includegraphics[scale=1]{images/polytechnique_genie_gauche_fr_rgb.png} 
\vfill}
	{\end{center}\end{titlepage}\rmfamily\selectfont}
	
\newcommand{\cours}[1]{{\Large\textsc{#1}}}

\newcommand{\groupe}[1]{{\Large #1}}

\newcommand{\frontmatter}{\cleardoublepage\pagenumbering{roman}\setcounter{page}{1} }

\newcommand{\mainmatter}{\pagenumbering{arabic} \setcounter{page}{1} }

\newcommand{\backmatter}{\appendix\renewcommand\chaptername{Annexe}\cleardoublepage}

\newcommand{\motscles}[1]{
	\vfill
	Mots-clés: #1}
	
\newcommand{\keywords}[1]{
	\vfill
	Keywords : #1}
	
\newenvironment{resumefr}
	{\begin{abstract}}
	{\end{abstract}\cleardoublepage}

\newenvironment{resumeen}
	{\selectlanguage{english}\begin{abstract}}
	{\end{abstract}\cleardoublepage\selectlanguage{francais}}

\newcommand{\sommaires}{
	\tableofcontents
	\listoffigures
	\listoftables}
	
\newcommand{\references}{\defbibheading{bibliography}{\chapter*{Références}}
\printbibliography}
	
\newenvironment{introduction}
	{\chapter*{Introduction}\addcontentsline{toc}{chapter}{Introduction}}
	{\cleardoublepage}
	
\newenvironment{chapitre}
	{\begin{refsegment}}				
	{\afterpage{\clearpage}\printbibliography[segment=\therefsegment]\end{refsegment}}
	
\newenvironment{conclusion}
	{\chapter*{Conclusion}\addcontentsline{toc}{chapter}{Conclusion}}
	{\cleardoublepage}
