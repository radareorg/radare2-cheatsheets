CC=pdflatex
DOCUMENT=r2cheatsheet

all: r2pdf

r2pdf:
	$(CC) --enable-pipes --shell-escape $(DOCUMENT).tex

clean:
	rm -rf *.vrb *.aux *.log *.nav *.out *.sbn *.toc

cleanall: clean
	rm -rf $(DOCUMENT).pdf
