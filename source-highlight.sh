#!/bin/bash

# Figure out where CDK is installed
CDK_DIR=$( cd "$( dirname "$0" )" && pwd )
export DYLD_LIBRARY_PATH=${CDK_DIR}/external/source-highlight-lib

eval ${CDK_DIR}/external/source-highlight --data-dir=${CDK_DIR}/external/source-highlight-langs $@
