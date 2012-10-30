#!/bin/bash

function process_asc_file() {
    local source_file=$1
    local target_file=$2
    echo "$target_file: `pwd`/`basename $source_file`"
    if [[ $source_file =~ \.asc$ ]]; then
        local inc_file
        local source_files=`perl -nle 'print $1 if /^include::(.+?)\[\]/' $source_file`
        for inc_file in $source_files; do
            local cur_dir=`pwd`
            cd `dirname $inc_file`
            process_asc_file `basename $inc_file` $target_file
            cd $cur_dir
        done
    fi
}

[ $# -eq 2 ] || { echo "Usage: $0 <source-file> <target-file>"; exit -1; }

process_asc_file $1 $2
