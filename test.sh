#!/bin/bash
rustc_comparison_path=$1

for testcase in `find $rustc_comparison_path -type f`; do
   tree-sitter parse $testcase > /dev/null 2>&1
   stat=$?
   if [ ! $stat == 0 ]; then
       echo "FAIL $testcase"
   else
        echo "PASS $testcase"
   fi
done
