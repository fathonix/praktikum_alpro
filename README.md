# Laporan Praktikum Algoritme Pemrograman ITK

This repository holds a [Typst](https://typst.app) markup file that is consist of the template and contents, with the compiled PDF included.

The Typst layouting replicates the original .docx file layout provided by ITK.

## Building

To build the template, only Make and Typst are needed. Run
`make prakalpro1.pdf` to build. Run `make dev` to have Typst
recompile when there is a file change. To build with the front cover, you need [GhostScript](https://www.ghostscript.com) installed to merge the PDFs. Simply run `make` to build it.

## TODOs

- Split template and contents into multiple files
- Replicate the front cover in Typst

## License

The template and build script are licensed under The MIT License. The contents, however, remain proprietary.