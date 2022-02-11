#!/bin/bash
count=0
average=0
sum=0
i=0
kabir=https://camo.githubusercontent.com/188a653b4c6154175272957542644b9a7ae6487b9cc09083702edde43bfe1177/68747470733a2f2f70726f66696c652d636f756e7465722e676c697463682e6d652f6b616269726465756c612f636f756e742e737667
echo "This will show output in every 10 seconds"
while true
do
current=$(curl -sX GET $kabir -H "Accept: */*" | grep -Po '[0-9]<*(?=<)' | tr -d '\n')
echo "Current : $current"
if [ ${i} -gt 0 ];then
    count=$(($((10#$current))-$((10#$previous))))
    sum=$((sum+count))
    average=$((sum/i))
    echo "Rate per last 10 second : "$count
    echo "Average rate till now : "$average
fi
(( i++ ))
sleep 10
clear
previous=$current
done