\LoadClass[11pt]{scrartcl}

\RequirePackage[sexy,hdr]{../template/evan}

\RequirePackage{import}
\RequirePackage{subcaption}
\RequirePackage{tabularx}
\RequirePackage{quiver}
\RequirePackage{siunitx}


\RequirePackage{bm}
\RequirePackage{centernot}
\RequirePackage{esint}
\RequirePackage{environ}
\RequirePackage{etoolbox}
\RequirePackage{float}
\RequirePackage{stmaryrd}

\newcommand{\multiline}[2][c]{%
    \begin{tabular}[#1]{@{}c@{}}#2\end{tabular}
}
\renewcommand{\arraystretch}{1.2}

\newcommand{\incfig}[2]{
    \def\svgwidth{#1}
    \import{../notes/figures/\jobname}{#2.pdf_tex}
}

\newcommand{\fig}[2]{
    \includegraphics[width=#1]{../notes/figures/\jobname/#2.pdf}
}

\setcounter{MaxMatrixCols}{15}

\usetikzlibrary{calc}
\usetikzlibrary{decorations.pathreplacing}
\usetikzlibrary{hobby}

\newcommand{\lecture}[1]{%
    \vspace{2em}
  \noindent
  % Make a box the width of the line
  \makebox[\linewidth][l]{%
    % TikZ node for the box
    \tikz[baseline=(box.base)]{
      \node[draw, fill=white, rounded corners=4pt,
            inner xsep=6pt, inner ysep=3pt,
            font=\sffamily\bfseries] (box) {#1};
    }%
    % Stretchable horizontal line
    \leaders\hrule height 0.8pt\hfill
  }
  \par\vspace{1em}
}

\renewcommand{\qedsymbol}{$\blacksquare$}