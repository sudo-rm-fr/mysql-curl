#!/bin/bash
# CSV to JSON converter using BASH
# Usage ./converter.sh input.csv > output.json
input=output.csv
sum=0
((sum++))
read first_line < output.csv
a=0
headings=`echo $first_line | awk -F, {'print NF'}`
lines=`cat $input | wc -l`
while [ $a -lt $headings ]
do
        head_array[$a]=$(echo $first_line | awk -v x=$(($a + 1)) -F"," '{print $x}')
        a=$(($a+1))
done

c=0
echo "{
        \"token\": \"\",
        \"customers\": ["
while [ $c -lt $lines ]
do
        read each_line
        if [ $c -ne 0 ]; then
                d=0
                echo -n "{ "
                while [ $d -lt $headings ]
                do
                        each_element=$(echo $each_line | awk -v y=$(($d + 1)) -F"," '{print $y}')
                        if [ $d -ne $(($headings-1)) ]; then
                                echo -n ${head_array[$d]}":"$each_element","
                        else
                                echo -n ${head_array[$d]}":"$each_element
                        fi
                        d=$(($d+1))
                done
                if [ $c -eq $(($lines-1)) ]; then
                        echo "} ] "
                else
                        echo "},"
                fi
        fi
        c=$(($c+1))
        sum=$(($sum+1))
done < $input
echo "}"
