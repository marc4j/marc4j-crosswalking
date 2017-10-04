#!/usr/bin/env bash

SOURCE="src/book.xml"
CONFIG="cfg.xml"
XSL="style/fo-stylesheet.xsl"
FO="build/crosswalking.fo"
PDF="build/crosswalking.pdf"

# run xsltproc to produce the fo output
xsltproc --output $FO $XSL $SOURCE

# run fop to produce pdf output
fop -c $CONFIG $FO $PDF
