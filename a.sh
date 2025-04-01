#!/bin/bash

set -e

echo $#
echo $*

for a in $@ ; do
 
 echo [$a]

done
for a in $* ; do
 
 echo [$a]

done
