#!/bin/bash
kabir=https://camo.githubusercontent.com/188a653b4c6154175272957542644b9a7ae6487b9cc09083702edde43bfe1177/68747470733a2f2f70726f66696c652d636f756e7465722e676c697463682e6d652f6b616269726465756c612f636f756e742e737667
for (( ; ; ))
do
curl -s $kabir | grep -Po '[0-9]<*(?=<)' | tr -d '\n'
echo 
done