#!/bin/bash

usage() {
    echo "Usage: $0 [threshold]"
    echo "Compresses PDF files in a directory larger than a specified threshold."
    echo "If the threshold is not provided, a default value of 500k is used."
    echo
    echo "Options:"
    echo "  threshold    The threshold size in bytes (k, M)"
    echo
}

if [ $# -eq 1 ]; then
  size_limit="$1"
else
  size_limit="500k"
fi

if [ ! -d ./not_compressed ]; then
	mkdir ./not_compressed
fi

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    usage
    exit 0
fi

if ! [[ "$threshold" =~ ^[0-9]+$ ]]; then
    echo "Error: The threshold must be a positive integer."
    echo
    usage
    exit 1
fi

find ./*.pdf -type f -size +500k -print0 | while IFS= read -r -d '' file; do
	filename="${file%.*}"

	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=${filename}_compr.pdf $file
	mv $file ./not_compressed
done

