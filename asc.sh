#!/bin/bash

[ $# -lt 1 ] && echo "Usage $0 <asciidoc-file> " && exit 1

CDK_DIR=$( cd "$( dirname "$0" )" && pwd )

attrs=()
attrs+=("-b deckjs")
attrs+=("-a deckjs_theme=marakana")
attrs+=("-a data-uri")
attrs+=("-a iconsdir=${CDK_DIR}/images/icons")
attrs+=("-a icons")
attrs+=("-a idprefix='blah_' -a ascii-ids")

eval ${CDK_DIR}/external/asciidoc/asciidoc.py -f ${CDK_DIR}/external/asciidoc/asciidoc.conf ${attrs[@]} $@

