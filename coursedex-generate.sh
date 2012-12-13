#!/bin/sh

CDK_DIR=$( cd "$( dirname "$0" )" && pwd )

attrs=()
attrs+=("-f chunked")
attrs+=("--no-xmllint")
attrs+=("--xsl-file=${CDK_DIR}/coursedex.xsl")
attrs+=("-v")

eval ${CDK_DIR}/external/asciidoc/a2x.py  ${attrs[@]} $@
