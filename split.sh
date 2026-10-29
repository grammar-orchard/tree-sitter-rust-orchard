#!/bin/bash

set -e

rustc_test_dir="$1"
target_dir="$2"
echo $target_dir
mkdir -p $target_dir/valid
mkdir -p $target_dir/invalid
tmp_dir="/tmp/tmp$$"
mkdir -p $tmp_dir

find $rustc_test_dir -type f | grep -P "\.rs$" | while read -r f; do
   echo $f
   d=`dirname $f`
   if rustc --edition 2024 --crate-type=lib $f -Zwrite-long-types-to-disk=no -o "${tmp_dir}/output" > /dev/null 2>&1; then
      echo valid
      mkdir -p "$target_dir/valid/$d"
      cp "$f" "$target_dir/valid/$d"
   else
      echo invalid
      mkdir -p "$target_dir/invalid/$d"
      cp "$f" "$target_dir/invalid/$d"
   fi
done
