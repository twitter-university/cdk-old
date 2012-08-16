#!/bin/bash

[ $# -lt 1 ] && echo "Usage $0 <asciidoc-file> " && exit 1

CDK_DIR=$( cd "$( dirname "$0" )" && pwd )

FILE=$1

attrs=()
attrs+=("-b deckjs")
attrs+=("-a deckjs_theme=marakana")
attrs+=("-a data-uri")
attrs+=("-a icons")

eval asciidoc -f ${CDK_DIR}/external/asciidoc/asciidoc.conf ${attrs[@]} $FILE

