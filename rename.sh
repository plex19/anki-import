#!/bin/bash

i=0;
x=25;
extto='.mp3';

#renaming 0000, 0001
# a=1
# for file in *; do
#   if [ $file = 'rename.sh' ]; then
#     echo "HELLO";
#     break;
#   fi
# 
#   if [ -f $file ]; then
#     new=$(printf "%04d.jpg" $a) #04 pad to length of 4
#     mv -i "$file" $new
#     let a=a+1
#   fi
# done

#renaming 0000 -> 0000.jpeg
# for file in *; do
#   mv "$file" "${file%$1}.jpeg"
# done

c=0
for file in `ls|sort -g`; do # option ls -r 
    if [ "$f" = "rename.sh" ]
    then
      continue
    fi
    if [ -f $file ]; then
       mv -v "$file" "$(printf '%0*d' 4 $c)"$extto
       c=$(($c+1))
    fi
done
