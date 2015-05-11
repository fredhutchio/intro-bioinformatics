#!/bin/sh
set -e
#if [ -z $TALKS_BASE_URL ]; then
#    opts="--self-contained"
#fi
./insert.py <"$1" \
   | pandoc --mathjax=MathJax/MathJax.js \
    -t html5 --template=src/template-revealjs.html \
    --standalone --section-divs \
    --smart \
    --variable theme="csmall" \
    --variable transition="fade" \
    -o "$2"
