#!/bin/bash

if [ $# -eq 0 ]
then
	exit 85
fi

for url in $@
do
	echo "la web "$url" tiene $(wget -qO- "$url" | grep -c "https") enlaces seguros"
done
