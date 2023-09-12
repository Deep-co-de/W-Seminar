#!/bin/bash

#docker run --rm -it -v $(pwd)/workdir:/workdir danteev/texlive latexmk -pdf document.tex
#docker run --rm -it -v $(pwd)/workdir:/src zidizei/lualatex lualatex -pdf document.tex
#docker run --rm -it -v $(pwd)/workdir:/data vipintm/xelatex make -f Makefile pdf
docker run --rm -v "`pwd`/workdir:/data" -it vipintm/xelatex make -f Makefile pdf
