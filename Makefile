.PHONY : all clean

all:
	latexmk -xelatex -output-directory='.build' resume.tex
clean:
	rm -rf .build
