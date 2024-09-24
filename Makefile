# Laporan Praktikum Algoritme Pemrograman ITK build script
# Licensed under MIT.

TYPST ?= typst
GS ?= gs
DOCNAME ?= prakalpro
COVFILE ?= frontcover.pdf
OUTFILE ?= LP\ 2\ &\ 3_Kelompok\ 4.pdf

all: $(OUTFILE)

dev: $(DOCNAME).typ
	$(TYPST) watch $^ $(DOCNAME).pdf

$(DOCNAME).pdf: $(DOCNAME).typ
	$(TYPST) compile $^ $@

$(OUTFILE): $(COVFILE) $(DOCNAME).pdf
	$(GS) -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile="$@" $^

clean: $(DOCNAME).pdf
	rm -f $(DOCNAME).pdf

.PHONY: all dev clean