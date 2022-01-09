#! /bin/bash

echo "To check a directory is present or not"
echo "Enter the directory name to search if it's present or not"
read dirname

if [[ -d "$dirname" ]]
then
        echo "$dirname exits"
else
        echo "$dirname doesn't exits"
fi

echo "To check weather a file is present in the directory or not"
echo "Enter the file name to search if it's present or not"
read filename

if [[ -f "$filename" ]]
then echo "$filename exists"
else echo "$filename doesn't exists"
fi

echo "Appending text into a file"
echo "Enter the fie name in which you want to append"
read filename1

if [[ -f "$filename1" ]]
then
        echo "Enter the text that you want to append"
        read fileText
        echo "$fileText" >> $filename1
else
        echo "$filename1 doesn't exists"
fi


echo "Enter the filename from which you want to read"
read filename2
if [[ -f "$filename2" ]]
then
        while IFS="" read -r line;
        do
                echo "$line"
        done < $filename2
else
        echo "$filename2 doesn't exits"
fi
