#! /bin/bash

cd "/home/rabaiba/Downloads"
for files in *
do
        echo "$files"
        mv "$files" "/home/rabaiba/Pictures/movdow/"
done
