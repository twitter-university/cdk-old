#!/bin/bash

[ $# -lt 1 ] && echo "Usage $0 <asciidoc-file> " && exit 1

FILE=$1

attrs=()
attrs+=("-b stream")
attrs+=("-a data-uri")
attrs+=("-a icons")

eval asciidoc ${attrs[@]} $FILE

