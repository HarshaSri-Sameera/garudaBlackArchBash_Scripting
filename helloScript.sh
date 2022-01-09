#! /bin/bash

count=10

if (( $count > 20 ))
then
        echo "The condition is true"
elif (( $count < 9 ))
then
        echo "This is hei hei hei"
else
        echo "The condition is false"
fi

# case statements
car="BMW"
case $car in
    "BMW" )
            echo "It's BMW" ;;
    "MERCEDESE" )
            echo "It's MERCEDESE" ;;
    "TOYATO" )
            echo "It's Toyato" ;;
    * )
            echo "Unknown car name"
esac


# loops
echo "while loop"
number=1
while [ $number -lt 10 ]
do
        echo "$number"
        number=$(( number+1 ))
done


# until loop
echo "until loop"
num=1
until [ $num -ge 10 ]
do
        echo "$num"
        num=$(( num+1 ))
done


# for loop
echo "for loop"
echo "loop 1"
for i in 1 2 3 4 5
do
        echo $i
done
echo "loop 2"
for i in {10..20..2}
do
        echo $i
done
echo "loop 3"
for (( i=0;i<5;i++ ))
do
        echo $i
done

# break
echo "break statement"
for (( i=1;i<=10;i++ ))
do
        if [ $i -gt 5 ]
        then
            break
        fi
        echo $i
done


# continue
echo "continue statement"
for (( i=1;i<=10;i++ ))
do
        if [ $i -eq 5 ] || [ $i -eq 7 ]
        then
            continue
        fi
        echo $i
done


# script input
echo "script input"
echo $0 $1 $2 $3
echo "using arrays"
args=("$@")
# echo ${args[0]} ${args[1]} ${args[2]}
echo $@
echo "length of the array is"
echo $#
echo "reading file using stdin"
while read line
do
        echo "$line"
done < "${1:-/dev/stdin}"


# script output
echo "script output"
ls -al 1>out.txt 2>err.txt
# ls +al 1>out.txt 2>err.txt
# ls -al >out.txt    # It just shows the err msg on konsole
# ls -al >out.txt 2>&1 # to read the err into the same single file

# string processing
echo "string processing"

echo "enter first string"
read str1

echo "enter second string"
read str2

if [ "$str1" == "$str2" ]
then
        echo "Strings matched"
else
        echo "strings are'nt matched"
fi

if [ "$str1" \< "$str2" ]
then
        echo "$str1 is smaller than $str2"
elif [ "$str1" \> "$str2" ]
then
        echo "$str1 is larger than $str2"
else
        echo "Both strings are same"
fi

echo "concatinate the strings"
c=$str1$str2
echo "$c"

echo "all captials"
echo ${str1^}
echo ${str2^^}

echo "arithematic operations"
n1=5
n2=10

echo $(( n1 + n2 ))
echo $(( n1 - n2 ))
echo $(( n1 / n2 ))
echo $(( n1 * n2 ))
echo $(( n1 % n2 ))

echo "other way for arithematic operations"
echo $(expr $n1 \* $n2)
echo $(expr $n1 + $n2)

echo "Hexadecimal number"
echo "Enter the hex number of ur choice"
read hexa
echo -n "The decimal value of $hex is : "
echo "obase=10; ibase=16; $hex" | bc



