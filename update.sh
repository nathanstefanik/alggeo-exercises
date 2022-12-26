#!/bin/bash
for PAGE in tex/*.tex
do
    echo "\\input{$PAGE}"
done > pages.tex

pdflatex main.tex

git add -A .

printf "\nDone!\n"
