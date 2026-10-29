#!/usr/bin/env bash

while read line; do
   path=$(echo $line | sed -e 's:^FAIL ::')

   contents=`cat $path | grep "#!\[feature" | sed -e 's/#!\[feature(\(.*\))\].*/\1/'`
   echo -e "$path\t$contents"
done < $1
