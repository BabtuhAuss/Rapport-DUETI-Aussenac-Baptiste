\LoadClass[a4paper,12pt]{article} % Classe du document

%--------------------- Packages ------------------------

\RequirePackage[french]{babel} %Langue du document
\RequirePackage[utf8]{inputenc} %Caractères spéciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}

\usepackage{eurosym} % avoir le symbole euro
\usepackage{wrapfig}  %encadrer les figures de texte
\usepackage{pgffor}% pour les boucles
\usepackage[nomessages]{fp}


%\makenomenclature
\RequirePackage{fancyhdr}
%\pagestyle{fancy}
%\fancyheadoffset{1cm}
%\setlength{\headheight}{2cm}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} %Configuration de la page


%-------------------- Informations sur le rapport ----------------------


\newcommand{\UE}[1]{\renewcommand{\UE}{#1}}
\newcommand{\sujet}[1]{\renewcommand{\sujet}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\elevesdeux}[1]{\renewcommand{\elevesdeux}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}

\newcommand{\fairemarges}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{1cm}
\setlength{\headheight}{2cm}
\lhead{\includegraphics[scale=0.05]{logos/uqac_only_logo.png}} %Affichage de l'image au top de la page
\rhead{\nouppercase{\leftmark}}
\rfoot{\thepage}
\cfoot{Rapport - \textbf{\titre}}
\lfoot{\UE}
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}

\ThisLRCornerWallPaper{0.8}{logos/50ans.png}
	\centering %Centraliser le contenu
	\includegraphics[width=0.5\textwidth]{logos/uqac_only_logo.png}\par\vspace{1cm} %Insertion du logo
	{\scshape\LARGE Université du Quebec A Chicoutimi \par} %Nom de l'université
	\vspace{1.5cm}%Espace de 1,5cm
	{\scshape\Large \UE \\ BACCALAURÉAT INFORMATIQUE \\ \sujet \par} %sous-titre
	\vspace{1cm}%Espace de 1cm
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
	{\huge\bfseries \titre \par} \
    \rule{\linewidth}{0.2 mm} \\[1.5 cm]
	\vspace{1cm}%Espace de 3cm
    
	\begin{minipage}{0.5\textwidth} %Minipage pour faire deux colonnes
		\begin{flushleft} \large %Envoyer à gauche
		\emph{\textbf{Élèves :}}\\ %Pour le titre au dessus des noms à gauche
        \eleves\\ %Remplacer pour chacun
		\end{flushleft}
	\end{minipage}
	~
	\begin{minipage}{0.4\textwidth}
		\begin{flushright} \large
		\emph{\textbf{}} \\
		 \elevesdeux \\
		\end{flushright}
	\end{minipage}\\[4cm]
    
	\vfill
	{\large \today\par} %Affichage de la date

\end{titlepage}
}

\newcommand{\tabledematieres}{
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[5]{
\begin{figure}[H]
\centering
\advance\leftskip-#5
\advance\rightskip-#5
\includegraphics[width=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}

%commande pour ajouter les captures d'écrans de l'annexe (flemme de tout mettre à la main)
\newcommand{\insertScreenshot}[0]{

\foreach \j in {1,3,...,9}{
    \begin{figure}[t]
        \ContinuedFloat
        \foreach \i in {\j,...,3+\j}{
            \FPeval{\result}{clip(\i+\j)}
            \begin{subfigure}{0.5\textwidth}
                \includegraphics[width=0.9\linewidth, height=11cm]{Annexe/\result.png}
                \caption{Capture \result}
                \hspace{.25cm}%
            \end{subfigure} 
        }   
    \end{figure}
}
}



