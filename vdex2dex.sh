#!/bin/bash

A=${1}

A=$(echo $A | sed --expression='s/\.vdex//g')
vdexExtractor -i $A.vdex
compact_dex_converter ${A}_classes.cdex
mv ${A}_classes.cdex.new $A.dex
echo $A.dex

