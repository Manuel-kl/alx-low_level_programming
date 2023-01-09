#!/bin/bash
objects=""
for c_file in *.c; do
  gcc -c -o "${c_file%.*}.o" "$c_file"
  objects="$objects ${c_file%.*}.o"
done
ar rcs liball.a $objects
