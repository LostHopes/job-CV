CC=pdflatex
PDFDIR=pdf
SRCDIR=src
PDFREADER=zathura
FILENAME=resume
FLAGS=-halt-on-error -output-directory=$(PDFDIR) -jobname=$(FILENAME)

all: build
	$(CC) $(FLAGS) ${SRCDIR}/$(FILENAME).tex

run:
	$(PDFREADER) $(PDFDIR)/$(FILENAME).pdf

build:
	mkdir -pv $(PDFDIR)

clean:
	rm -rv $(PDFDIR)
