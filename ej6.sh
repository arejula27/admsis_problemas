#!/bin/bash

if [ $# -ne 2 ]
then 
	echo "Uso: ej6.sh prefijo dir"
	exit 85
fi

files=$(find $2 -mtime +10)
echo $files
dat=$(date +"%y-%m-%d")
tar -cvf  ${1}_${dat}.tar $files




