#!/bin/bash

pandoc thesis.tex \
    -F pandoc-crossref \
    --citeproc \
    -o output.docx \
    -w docx \
    --pdf-engine xelatex \
    -M "crossrefYaml=./pandoc-crossref-es.yaml" \
    --bibliography=reference.bib \
    --reference-doc ref.docx \
    --top-level-division=chapter \
    # --number-sections \
    