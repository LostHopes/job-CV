CC=pdflatex
SRCDIR=src
PDFDIR=pdf
PDFREADER=zathura-sandbox
FILENAME=resume
PDF=$(PDFDIR)/$(FILENAME).pdf
FLAGS=-halt-on-error -output-directory=$(PDFDIR) -jobname=$(FILENAME)

all: prepare
	$(CC) $(FLAGS) ${SRCDIR}/$(FILENAME).tex

run:
	$(PDFREADER) $(PDF)

prepare:
	mkdir -pv $(PDFDIR)

clean:
	@rm -rv $(PDFDIR)


.PHONY: all run prepare clean
