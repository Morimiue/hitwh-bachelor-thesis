#!/bin/bash

rm output.docx || True

    # --table-of-contents \
    # --toc-depth 5 \

pandoc thesis.tex \
    -F pandoc-crossref \
    --citeproc \
    -o output.docx \
    -w docx \
    --pdf-engine xelatex \
    -M "crossrefYaml=pandoc/pandoc-crossref-es.yaml" \
    -M "reference-section-title=参考文献" \
    --bibliography=reference.bib \
    --csl pandoc/pandoc_gb7714-2005.csl \
    --reference-doc pandoc/ref.docx \
    --top-level-division=chapter \
    --number-sections \
    