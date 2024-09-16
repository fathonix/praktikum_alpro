TYPST ?= typst
GS ?= gs
DOCNAME ?= prakalpro1
COVFILE ?= frontcover.pdf
OUTFILE ?= Praktikum\ Algoritme\ Pemrograman\ 1.pdf

all: dist/$(OUTFILE)

dist:
	mkdir -p dist

dist/$(DOCNAME).pdf: $(DOCNAME).typ | dist
	$(TYPST) compile $^ $@

dist/$(OUTFILE): $(COVFILE) dist/$(DOCNAME).pdf
	$(GS) -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile="$@" $^

clean: dist
	rm -rf dist

.PHONY: all clean