.PHONY : all clean

all:
	latexmk -xelatex -output-directory='.build' resume.tex
	# typst compile resume.typ .build/resume.typ.pdf
clean:
	rm -rf .build
