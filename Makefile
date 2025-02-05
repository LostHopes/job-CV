CC=pdflatex
PDFDIR=pdf
PDFREADER=zathura
FILENAME=resume
FLAGS=-halt-on-error -output-directory=$(PDFDIR) -jobname=$(FILENAME)
MAIN=src/resume.tex

all: build
	$(CC) $(FLAGS) $(MAIN)

run:
	$(PDFREADER) "$(MAIN)"

build:
	mkdir -pv pdf

clean:
	rm -rv $(PDFDIR)
