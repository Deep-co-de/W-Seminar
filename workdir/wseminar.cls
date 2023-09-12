\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wseminar}[2023/05/23 Pauls W-Sminararbeit Vorlage]


\LoadClass{article}
\RequirePackage{blindtext}
\RequirePackage{etoolbox}

\RequirePackage[bibstyle=standard,citestyle=zitieren-all,urldate=short,url=true,backref=false,backend=bibtex,maxcitenames=1,maxbibnames=1]{biblatex}
\bibliography{my-bibliography}

\RequirePackage[T1]{fontenc}
\RequirePackage[ngerman]{babel}
\setlength\emergencystretch{3em}

%\RequirePackage{titlesec}
\RequirePackage{tocloft}


%%% TABLE OF CONTENT SPACING: %%%
%\setlength\cftparskip{-2pt}
\setlength\cftbeforesecskip{1pt}
%\setlength\cftaftertoctitleskip{2pt}
%\setlength\cftsecnumwidth{1.75em}


\renewcommand{\cftsecfont}{\relax}
\renewcommand{\cftsecpagefont}{\relax}

\renewcommand{\contentsname}{Inhaltsverzeichnis}

\RequirePackage{geometry}
\geometry{
	paper=a4paper,
	left=2.5cm,
	right=4cm,
	top=1.5cm,
	bottom=2cm,
	includeheadfoot
}

\RequirePackage{fontspec}
\RequirePackage{csvsimple}

\setmainfont{calibri}[
  Path = fonts/,
  Extension = .ttf ,
  UprightFont = *-regular ,
  ItalicFont = *-italic ,
  BoldFont = *-bold ,
  BoldItalicFont = *-bold-italic,
]

\RequirePackage{setspace}
\onehalfspacing


\RequirePackage{lipsum}

\RequirePackage[none]{hyphenat}
\RequirePackage{graphicx, caption}
\graphicspath{ {./images/} }

\RequirePackage[german=quotes]{csquotes}
\MakeOuterQuote{"}

\RequirePackage{hyperref}
\RequirePackage{cleveref}

% \Autoref is for the beginning of the sentence
\let\orgautoref\autoref
\providecommand{\Autoref}[1]
{%
\def\equationautorefname{Gleichung}%
\def\figureautorefname{Abbildung}%
\def\subfigureautorefname{Abbildung}%
\orgautoref{#1}%
}
% \autoref is used inside the sentence to produce Fig., and Eq. for figures, subfigures, and equations
\renewcommand{\autoref}[1]
{%
\def\equationautorefname{Gl.}%
\def\figureautorefname{Abb.}%
\def\subfigureautorefname{Abb.}%
\def\tableautorefname{Tab.}%
\def\subtableautorefname{Tab.}%
\orgautoref{#1}%
}


\renewcommand{\normalsize}{\fontsize{12.5pt}{16.5pt}\selectfont}
\RequirePackage{titlesec}
\titleformat{\section}
  {\normalfont\fontsize{16}{16}\bfseries}{\thesection}{1em}{}



%\RequirePackage[square,sort,comma,numbers]{natbib}
%\bibliographystyle{acm}
%\addbibresource{bibliography.bib}






\RequirePackage{nameref}
\RequirePackage[entrycounter,numberedsection=nameref]{glossaries}
%\RequirePackage{glossaries-german}
\RequirePackage{glossaries-extra}
\renewcommand*{\glsautoprefix}{glo:}

%\renewcommand{\gls@main@displayfirst}[4]{
%  #1#4\protect\footnote{#2}
%}


