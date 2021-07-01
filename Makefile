.PHONY : all clean

all:
	latexmk -xelatex -output-directory='.build' resume.tex
	open resume.pdf
clean:
	rm -rf .build
