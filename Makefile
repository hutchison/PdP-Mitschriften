LATEX 		= xelatex
SRC			= $(shell ls *.tex)
PDF			= $(SRC:%.tex=%.pdf)

pdf: $(PDF) clean

$(PDF) : %.pdf : %.tex
	$(LATEX) $<

clean:
	$(RM) *.log *.aux *.thm

.PHONY: clean
