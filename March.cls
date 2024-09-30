\ProvidesClass{March}
\LoadClass{ctexart}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{geometry}
\RequirePackage{comment}
\RequirePackage{graphicx}
\RequirePackage{pgfplots}
\RequirePackage{caption}
\RequirePackage{etoolbox}
\RequirePackage[colorlinks]{hyperref}
\RequirePackage{xcolor}
\RequirePackage{mdframed}

\definecolor{THUPurple}{RGB}{85,5,88}
\definecolor{BNUBlue}{RGB}{0,40,104}
\definecolor{PKURed}{RGB}{186,12,47} 

\mdfdefinestyle{questionstyle}{
  linewidth=2pt,
  linecolor=PKURed,
  leftline=true,
  rightline=false,
  topline=false,
  bottomline=false,
  backgroundcolor=pink!10,
}
\mdtheorem[style=questionstyle]{question}{题目}[section]

\mdfdefinestyle{exercisestyle}{
  linewidth=2pt,
  linecolor=BNUBlue,
  leftline=true,
  rightline=false,
  topline=false,
  bottomline=false,
  backgroundcolor=gray!5,
}
\mdtheorem[style=exercisestyle]{exercise}{练习}[section]

\mdfdefinestyle{formulastyle}{
  linewidth=2pt,
  linecolor=THUPurple,
  leftline=true,
  rightline=false,
  topline=false,
  bottomline=false,
  backgroundcolor=gray!5,
}
\mdtheorem[style=formulastyle]{formula}{公式}[section]

\pgfplotsset{compat=1.18}
\geometry{a4paper, scale=0.8}

\theoremstyle{definition}
%\newtheorem{question}{题目}[section]
%\newtheorem{exercise}{练习}[section]
%\newtheorem{formula}{公式}[section]
\newtheorem*{solution}{解}

\theoremstyle{plain}
\newtheorem*{note}{注记}
\newtheorem*{analysis}{分析}

\renewcommand{\qedsymbol}{$\blacksquare$}
\renewcommand{\proofname}{\bf 证明}
\newcommand{\pll}{\kern 0.56em/\kern -0.8em /\kern 0.56em}

\newenvironment{centertikzpicture}
{\begin{center}\begin{tikzpicture}}
            {\end{tikzpicture}\end{center}}
\AtBeginEnvironment{question}{\setcounter{figure}{\value{question}}}
\renewcommand{\thefigure}{\thesection.\arabic{figure}}

\def\pgfsysdriver{pgfsys-dvipdfm.def}
\usetikzlibrary{shapes.geometric}

%定义平行且等于符号
\newcommand\pxqdy{%
    \mathrel{\text{%
            \tikz[baseline,line width=0.05ex,line cap=round]
            \draw (0,0) -- (.7em,0)
            (0,.45ex) -- (.7em,.45ex)
            (.25em,.55ex) -- (.35em,1.6ex)
            (.45em,.55ex) -- (.55em,1.6ex);}}}

%定义平行四边形符号
\newcommand\pxsbx{%
    \mathord{\text{%
            \tikz[baseline,line width=0.05ex,line join=round]
            \draw (0,.1ex) -- (.8em,.1ex) -- (1em,1.6ex) -- (.2em,1.6ex) -- cycle;}}}

