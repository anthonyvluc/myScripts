#!/bin/sh
##
#
# Title: jpg-converter.sh
# Author: Anthony Luc
# Date: June 19, 2017
# Description: Given a file directory, recursively optimize jpg files to either baseline or progressive 
#
# Usage: jpg-converter.sh {}...
#
# Source: https://stackoverflow.com/questions/12831293/how-to-recursivly-use-jpegtran-command-line-to-optimise-all-files-in-subdirs
#
##

# TODO: Add a baseline version

# Usage Statement
usage() {
    cat <<EOF
Usage: $(basename $0)
    -p PATH     Specify the folder path
EOF
    exit $1
}

# TODO: Parse arguments... 

find /home/hai/GitHub/VSAND-Website/img -name "*.jpg" -type f -exec jpegtran -progressive -copy none -optimize -outfile {} {} \;

