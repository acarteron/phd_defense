# .PHONY: all clean

# all : clean pres.pdf

# pres.pdf : pres.tex
# 	@echo -n "Generating PDF"
# 	@pdflatex pres  > /dev/null
# 	@echo -n ".........."
# 	@echo -n ".........."
# 	@pdflatex pres  > /dev/null
# 	@echo ".......... DONE !"

# clean :
# 	@echo -n "Cleaning ............................................."
# 	@rm -rf *.pdf *.aux *.log *.out *.toc *.bbl *.blg *.lof *~  *.nav *.snm
# 	@echo " DONE !"

PROBLEMS:=${shell ls *.tex}

TARGET_FORMAT=pdf

.PHONY: all

all:			${PROBLEMS:.tex=.${TARGET_FORMAT}}

%.pdf:			pres.tex force
				@latexmk -xelatex $< > /dev/null

force:			;

.PHONY: clean

clean:
	latexmk -C
	rm -f *.bbl *.xml *.snm *.nav *.out *.fdb_latexmk *.vrb *.table *.gnuplot *-blx.bib
