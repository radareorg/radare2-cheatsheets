R2=radare2-cheatsheet
R2FRIDA=r2frida-cheatsheet

TEX2DVI=latex
TEX2PDF=pdflatex

all: r2pdf r2fridapdf

r2pdf:
	$(TEX2PDF) --enable-pipes --shell-escape $(R2).tex
	$(TEX2DVI) $(R2).tex

r2fridapdf:
	$(TEX2PDF) --enable-pipes --shell-escape $(R2FRIDA).tex
	$(TEX2DVI) $(R2FRIDA).tex

clean:
	rm -rf *.vrb *.aux *.log *.nav *.out *.sbn *.toc

cleanall: clean
	rm -rf *.pdf
