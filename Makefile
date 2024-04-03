CC=pdflatex
R2=radare2-cheatsheet
R2FRIDA=r2frida-cheatsheet

all: r2pdf r2fridapdf

r2pdf:
	$(CC) --enable-pipes --shell-escape $(R2).tex

r2fridapdf:
	$(CC) --enable-pipes --shell-escape $(R2FRIDA).tex

clean:
	rm -rf *.vrb *.aux *.log *.nav *.out *.sbn *.toc

cleanall: clean
	rm -rf *.pdf
