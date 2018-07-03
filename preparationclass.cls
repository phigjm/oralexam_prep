%% Latex document class for oral exams
%% @author: Umut Elicabuk
%% @date: 05.05.2018

\ProvidesClass{preparationclass}
\LoadClass[a4paper,11pt,titlepage,openany,twoside=false]{scrbook}

%% ----------------------
%% | LANGUAGE AND INTRO |
%% ----------------------

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{lmodern}
\usepackage[protrusion=true,
						expansion,
						tracking,
						kerning,
						spacing]{microtype}

\usepackage[ngerman]{babel}
\usepackage[fixlanguage]{babelbib}

%% -----------------
%% | SCIENCE STUFF |
%% -----------------

\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{physics}
\usepackage{upgreek}
\usepackage{nicefrac}

\usepackage[load-configurations=abbreviations]{siunitx}
\sisetup{per-mode=fraction}
\sisetup{separate-uncertainty=false}
\usepackage{textcomp}

\usepackage[version=3]{mhchem}

%% ------------------------
%% | LATEX RELEVANT STUFF |
%% ------------------------

\usepackage[pdftex]{graphicx}
\usepackage[raiselinks=true]{hyperref}
\usepackage{parskip}
\usepackage{subcaption}
