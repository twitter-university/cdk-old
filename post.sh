#!/bin/bash

[ $# -lt 1 ] && echo "Usage $0 <asciidoc-file> " && exit 1

CDK_DIR=$( cd "$( dirname "$0" )" && pwd )
FILE_IN=$1
FILE_OUT=${FILE_IN%\.*}.html

attrs=()
attrs+=("-b stream")
attrs+=("-a data-uri")
attrs+=("-a icons")

eval ${CDK_DIR}/external/asciidoc/asciidoc.py ${attrs[@]} $FILE_IN
echo "Outputed " ${FILE_OUT}
cat ${FILE_OUT} | pbcopy
echo "Copied content of ${FILE_OUT} into your clipboard."

