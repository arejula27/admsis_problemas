#!/bin/bash 
shels=$(cat /etc/passwd | cut -d ':' -f 7 | sort | uniq)
for shl in $shels
do
	echo "shell $shl"
	cat /etc/passwd |grep $shl | cut -d ':' -f 1 
done
