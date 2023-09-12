######################
#      Makefile      #
######################

filename=document

pdf: 
	xelatex ${filename}
	xelatex ${filename}
	bibtex ${filename}
	xelatex ${filename}

text: html
	html2text -width 100 -style pretty ${filename}/${filename}.html | sed -n '/./,$$p' | head -n-2 >${filename}.txt

html:
	@#latex2html -split +0 -info "" -no_navigation ${filename}
	htlatex ${filename}

view:
	while inotifywait --event modify,move_self,close_write ${filename}.tex; \
		do xelatex -halt-on-error ${filename} &&   xelatex -halt-on-error \
		${filename}; done

clean:
	ls .
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg,snm,toc,nav}
