% resume.cls - A LaTeX2e class for resumes
% (c) 2011 Arun Chaganty <arunchaganty@gmail.com> http://arun.chagantys.org/
%
% Written from the excellent resume template of the following authors:
% (c) 2002 Matthew Boedicker <mboedick@mboedick.org> (original author) http://mboedick.org
% (c) 2003 David J. Grant <dgrant@ieee.org> http://www.davidgrant.ca
% (c) 2007 Todd C. Miller <Todd.Miller@courtesan.com> http://www.courtesan.com/todd
% (c) 2009 Derek R. Hildreth <derek@derekhildreth.com> http://www.derekhildreth.com 
%
% This work is licensed under the Creative Commons
% Attribution-NonCommercial-ShareAlike License. To view a copy of this
% license, visit http://creativecommons.org/licenses/by-nc-sa/1.0/ or
% send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford,
% California 94305, USA.
%

% Initial declarations
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2011/11/05 Resume class]

% Options
% `web' hides the address header.
\DeclareOption{web}{\newcommand*{\omitaddress}{}}

% Other options go to article
\PassOptionsToClass{11pt,12pt,letterpaper,a4paper}{article}

\ProcessOptions\relax
% We build off the article class
\LoadClassWithOptions{article}

% Package Declarations

\RequirePackage{latexsym}
\RequirePackage[empty]{fullpage}
\RequirePackage{tweaklist}

% Load colors
\RequirePackage[usenames,dvipsnames]{color}
\definecolor{grey}{gray}{.85}
\definecolor{greylink}{gray}{.30}

% Setup hyperlinks
\RequirePackage{hyperref}
\hypersetup{
    colorlinks,           %
    citecolor=black,      %
    filecolor=black,      %
    linkcolor=black,      %
    urlcolor=greylink     % can put red here to visualize the links
}
\urlstyle{same}

% Adjust margins, etc.
\textheight=9.0in
\raggedbottom
\raggedleft		% originally raggedright
\setlength{\tabcolsep}{0in}
\addtolength{\oddsidemargin}{-0.375in}
\addtolength{\evensidemargin}{0.375in}
\addtolength{\textwidth}{0.5in}
\addtolength{\topmargin}{-.375in}
\addtolength{\textheight}{0.75in}

% Adjustments for the itemise lengths
\setlength{\itemindent}{0em}
\renewcommand{\itemhook}{
  \setlength{\topsep}{1pt}%
  \setlength{\itemsep}{-1pt}
}

% Define commands of address, and email.
\newcommand*{\@website}{}
\newcommand*{\website}[1]{\renewcommand*{\@website}{#1}}
\newcommand*{\@email}{}
\newcommand*{\email}[1]{\renewcommand*{\@email}{#1}}
\newcommand*{\@address}{}
\newcommand*{\address}[1]{
  \@ifundefined{omitaddress}{
    \renewcommand*{\@address}{#1}
  }
  {
    % Omitting address/phone number
    \renewcommand*{\@address}{
      \texttt{\colorbox{yellow}{[web version:  address \& phone omitted]}}
    }
  }
}
\address{}

% Display the header at the beginning of the document
\newcommand*{\resumeheader}{
  \begin{tabular*}{7in}{l@{\extracolsep{\fill}}r}
    \textbf{\href{\@website}{\LARGE \@author}} & \href{mailto:\@email}{\@email} \\
    {\footnotesize \@address}           & \href{\@website}{\@website}
  \end{tabular*}
  \\
  \vspace{0.1in}
}

\renewcommand*{\section}[1]{
  \vspace{4pt}
  \colorbox{grey}{
    \begin{minipage}{\textwidth}
    {\textbf{#1 \vphantom{p\^{E}}}}
    \end{minipage}
  } \vspace{0pt}\\
}

% Is a nice condensed resume point, laid out as follows:
% [1] Title                            [2] Date
% [3] More details                     [4] Location
% - [5] Description
\newcommand{\credential}[5]{
  \item
    \begin{tabular*}{6.5in}{l@{\extracolsep{\fill}}r}
        \textbf{#1} & #2 \\
        \small{#3} & \small{#4}
    \end{tabular*} \vspace{-6pt} \\
    {\footnotesize #5}
  \vspace{-2pt}
}

