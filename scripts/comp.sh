#!/bin/bash

cat problems | while read c;
do
echo $c
##echo 1
touch $c.tex
cat ./tex_patterns/begin > $c.tex
touch $c.txt.tex
cat $c.txt.tex >> $c.tex
cat ./tex_patterns/middle >> $c.tex
touch $c.sol.tex
cat $c.sol.tex >> $c.tex
echo "
\newpage
\begin{figure}[h]
	\centering
	\includegraphics[width=1\textwidth]{{$(dirname $0)/../$c}.png}
\end{figure}
" >> $c.tex
cat ./tex_patterns/end >> $c.tex
pdflatex $c
echo $c is done
done

