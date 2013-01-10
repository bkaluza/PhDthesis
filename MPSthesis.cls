%
% MPSthesis v1.0
% By Petra Kralj Novak <Petra.Kralj.Novak@ijs.si
% Version 1.0 released 15/01/2009
%-------------------------- identification ---------------------
%\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MPSthesis}[2009/01/15 v1.0 MPS thesis class] % based on 2003/01/11 v1.2 CUEDthesis class
%-------------------------- initial code -----------------------


%use a Book style document 
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[a4paper]{book}

\usepackage{amssymb}
\usepackage{graphicx}
\usepackage{fancyhdr}
\usepackage{eucal}
\usepackage[usenames]{color}
\usepackage[perpage]{footmisc}
\usepackage[round, sort, numbers, authoryear]{natbib}
%\usepackage[english]{babel}
\usepackage{ifthen}
\usepackage{ifpdf}
%\usepackage{watermark}
%\usepackage{draftwatermark}
\usepackage{lscape}
%\usepackage{cmbright}
\usepackage{moreverb}
%\usepackage[tableposition=top]{caption}


% chapter header
\renewcommand\@chapapp{Chhh} 

\def\@makechapterhead#1{%
  \vspace*{20\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne 
      \if@mainmatter
        \huge \bfseries \thechapter \space \space \space
      \fi
    \fi
    \LARGE \bfseries #1\nobreak
    \vskip 50\p@
  }}

% QUASI-CHAPTERS
%
% environment for quasi-chapters like Abstract, Povzetek, Abbreviations, Biography, ... (no chapter number)



\newenvironment{preliminary}[1]{
  \cleardoublepage
  \thispagestyle{fancy}
  \phantomsection
  \addcontentsline{toc}{chapter}{#1} %adds parameter #1 to contents page 
  \fancyhead{}
  \fancyfoot{}
  \fancyhead[RO]{\thepage}
  \fancyhead[LO]{}%\bfseries\MakeUppercase{#1}}
  \fancyhead[LE]{\thepage}
  %\fancyhead[RE]{\bfseries\MakeUppercase{#1}}
  \fancyhead[RE]{{#1}}
  \vspace*{20\p@}%
  \hspace{2.5mm}
  {\LARGE \bfseries #1}
  \vskip 50\p@
  \begin{quote}}
  {\end{quote}
} 



% Nomenclature
\usepackage{nomencl}
\makeglossary
\renewcommand\nomgroup[1]{%
  \ifthenelse{\equal{#1}{A}}{%
   \item[\textbf{Roman Symbols}] }{%             A - Roman
    \ifthenelse{\equal{#1}{G}}{%
     \item[\textbf{Greek Symbols}]}{%             G - Greek
      \ifthenelse{\equal{#1}{R}}{%
        \item[\textbf{Superscripts}]}{%              R - Superscripts
          \ifthenelse{\equal{#1}{S}}{%
           \item[\textbf{Subscripts}]}{{%             S - Subscripts
	    \ifthenelse{\equal{#1}{X}}{%
	     \item[\textbf{Other Symbols}]}{{%    X - Other Symbols
	    \ifthenelse{\equal{#1}{Z}}{%
	     \item[\textbf{Acronyms}]}%              Z - Acronyms
              			{{}}}}}}}}}}


%-->
%--> Google.com search "hyperref options"
%--> 
%--> http://www.ai.mit.edu/lab/sysadmin/latex/documentation/latex/hyperref/manual.pdf
%--> http://www.chemie.unibas.ch/~vogtp/LaTeX2PDFLaTeX.pdf 
%--> http://www.uni-giessen.de/partosch/eurotex99/ oberdiek/print/sli4a4col.pdf
%--> http://me.in-berlin.de/~miwie/tex-refs/html/latex-packages.html
%-->


    \usepackage[
                 bookmarks,
                 bookmarksopen = true,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 pagebackref = false,
                 colorlinks = false,
                 linkcolor = black,
                 urlcolor  = black,
                 citecolor = black,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref}

    %\DeclareGraphicsExtensions{.eps, .ps}
    \usepackage{epsfig}
    \usepackage{graphicx}
    %\graphicspath{{ThesisFigs/EPS/}{ThesisFigs/}}





   \setlength{\paperheight}{297mm}
   \setlength{\paperwidth}{210mm}


%\setlength{\hoffset}{0.00cm}
%\setlength{\voffset}{0.00cm}

\setlength{\evensidemargin}{-0.7cm}
\setlength{\oddsidemargin}{0.7cm}
\setlength{\topmargin}{-10mm}
\setlength{\headheight}{1.36cm}
\setlength{\headsep}{1.00cm}
\setlength{\textheight}{23cm}
\setlength{\textwidth}{16cm}
\setlength{\marginparsep}{1mm}
\setlength{\marginparwidth}{3cm}
\setlength{\footskip}{2.36cm}

%\baselineskip=18pt plus2pt
%\renewcommand{\baselinestretch}{1.2}


\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{#1}}{}}
%\renewcommand{\chaptermark}[1]{\markboth{#1}{#1}}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{#1}}
%\renewcommand{\sectionmark}[1]{\markboth{#1}}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}%{0.5pt}
\renewcommand{\footrulewidth}{0pt}
\addtolength{\headheight}{0.5pt}
\fancypagestyle{plain}{
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
}

% page style for regular chapters
\newcommand{\mychapterstyle}{
	\fancyhead[RO]{\thepage}
	%\fancyhead[LO]{\bfseries\rightmark}
	\fancyhead[LO]{\rightmark}
	\fancyhead[LE]{\thepage}
	\fancyhead[RE]{\leftmark}
}
	
	%% In order all pages to have the Chapter title as header 
	%\newcommand{\mymarks}{ 
	%\ifthenelse{\equal{\leftmark}{\rightmark}}
%		{} % if equal
%		{\leftmark}} % if not equal 
	
%	\fancyhead[LO,RE]{\mymarks} 
%	\fancyhead[LE,RO]{\thepage}
	
	
%}



% These macros define an environment for front matter that is always 
% single column even in a double-column document.

\newenvironment{alwayssingle}{%
       \@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
       \else\newpage\fi}
       {\if@restonecol\twocolumn\else\newpage\fi}

% DECLARATIONS
%
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

\def\subtitle#1{\def\@subtitle{#1}}
\def\titleShort#1{\def\@titleShort{#1}}
\def\naslov#1{\def\@naslov{#1}}
\def\podnaslov#1{\def\@podnaslov{#1}}
\def\supervisor#1{\def\@supervisor{#1}}
\def\cosupervisor#1{\def\@cosupervisor{#1}}
\def\mesec#1{\def\@mesec{#1}}
\def\leto#1{\def\@leto{#1}}
\cosupervisor{}   % set to empty by default 

\def\supervisorlong#1{\def\@supervisorlong{#1}}
\def\cosupervisorlong#1{\def\@cosupervisorlong{#1}}
\def\cosupervisorlongAffil#1{\def\@cosupervisorlongAffil{#1}}

\def\evaluationBoardChairman#1{\def\@evaluationBoardChairman{#1}}
\def\evaluationBoardChairmanAffiliation#1{\def\@evaluationBoardChairmanAffiliation{#1}}

\def\evaluationBoardMember#1{\def\@evaluationBoardMember{#1}}
\def\evaluationBoardMemberAffiliation#1{\def\@evaluationBoardMemberAffiliation{#1}}

\def\evaluationBoardMembers#1{\def\@evaluationBoardMembers{#1}}
\def\evaluationBoardMemberAffiliations#1{\def\@evaluationBoardMemberAffiliations{#1}}


% PREAMBLE
%
% define the page layout for the pages that come before the title page
\newcommand{\makepreamble}{%
 {\thispagestyle{empty}
% title only
	\rm \huge \begin{flushright}\MakeUppercase{\textbf{\@titleShort}}\end{flushright}
	\par
	\rm \huge \begin{flushright}\MakeUppercase{\textbf{\@subtitle}}\end{flushright}
	\vspace{3cm}
	\rm \Large \begin{flushright}\@author\end{flushright}
	
% 
\newpage
\thispagestyle{empty}
	\vspace{1.5cm}
	\footnotesize

	\begin{tabular}{l}
		\textbf{Doctoral Dissertation}\\
		\textbf{Jo\v{z}ef Stefan International Postgraduate School}\\
		\textbf{Ljubljana, Slovenia, \@mesec \ \@leto}\\
	\end{tabular}

	\vspace{1.5cm}
%	\begin{tabular}{ll}
%	\textbf{Supervisor:}& \@supervisorlong\\
%	\textbf{Co-Supervisor:}& \@cosupervisorlong\\
%	& \@cosupervisorlongAffil\\
%	\end{tabular}

	\vspace{1.5cm}

   \begin{tabular}{l}
	\textbf{Evaluation Board:} \\
 \@evaluationBoardChairman, Chairman, \@evaluationBoardChairmanAffiliation \\
 \@evaluationBoardMember, Member, \@evaluationBoardMemberAffiliation \\
 \@evaluationBoardMembers, Member, \@evaluationBoardMemberAffiliations \\
   \end{tabular}
}
\cleardoublepage
}


% TITLEPAGE
%
%define title page layout
\renewcommand{\maketitle}{%
 \thispagestyle{empty}\vbox to \vsize{%
 \vspace{-0.5cm}
 	\noindent \includegraphics[width=16cm]{figures/MPSlogo1.pdf}
	{
		\par
		\noindent \rm  \Large \@author \par
		\vspace{1.5cm}
	{
		%\Huge \rm {\bfseries \begin{flushleft} \@title \end{flushleft}} \par
		\noindent \Huge \rm {\bfseries  \@title } \par
		\noindent \Large \rm {\bfseries \@subtitle}  \par
		 
		
			\vspace{1cm}
		\noindent \Large  {\bfseries Doctoral Dissertation}\par
			\vspace{1.2cm}
		\noindent \Huge \rm  {\bfseries \@naslov }  \par
% 			\Huge {\bfseries \begin{flushleft} \@naslov \end{flushleft}} \par
		\noindent \Large {\bfseries \@podnaslov} \par
			\vspace{1cm}
		\noindent \Large  {\bfseries Doktorska disertacija} \par
	}
   	\vspace{2.5cm}
	\noindent \large {\itshape Supervisor:} \@supervisor \par
		\vspace{4mm}
	\noindent \ifthenelse{\equal{\@cosupervisor}{}}{}{{\it Co-supervisor:} \@cosupervisor \par }
		\vfill
	\noindent \normalsize Ljubljana, Slovenia, \@mesec\ \@leto \par
		\vfill
	
    } }%
	\newpage \thispagestyle{empty}
  \cleardoublepage
}
 

% DEDICATION
%
% The dedication environment makes sure the dedication gets its
% own page and is set out in verse format.
\newenvironment{dedication}
{ 
  \begin{alwayssingle}
  \pagestyle{empty}
  \vspace*{3cm}
  \begin{quote} 
  \begin{center}}
  {\end{center} 
  \end{quote}
  \end{alwayssingle}
}



\renewenvironment{thebibliography}[1]
     {\chapter{\bibname}
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}


\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \cleardoublepage
                    \thispagestyle{fancy}%                  
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}



%\setcounter{subsubsection}{3}
%\setcounter{secnumdepth}{3}
%\setcounter{tocdepth}{3} % to include subsub sections in TOC
%\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{0pt}{6pt}{6pt}{\large\bfseries}}
%\renewcommand{\thesubsubsection}{\arabic{subsubsection}. }
