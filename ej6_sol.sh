#!/bin/bash

function usage {
	echo "Usage: $0 <prefix> <dir>"
	exit 85
}

if [ $# -ne 2 ]
then 
	usage
fi

prefix="$1"

out_fname="${prefix}_$(date +%F).tar"

shift # $1=$2 $2=$3 etc
for  dir in $@ 
do 
	if [ ! -d "$dir" ]
	then 
		usage
	fi
 
	find "$dir" -type f -print0 -mtime -30 -exec tar -rvf ${out_fname} {} \;
	# -r en tar para que se añadan todos los archivos al mismo tar

	#otra opcion menos optima
	#find "$dir" -type -f -mtime +30 | tar -rvf ${out_fname}.tar {} \;
done
#mtime modificado
#ctime atributos y modificacion del ficher (permisos, numero de links,etc) 
#atime ultimo acceso (cat, vim, etc)
