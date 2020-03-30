#!/bin/bash

if [ $# -eq 0 ]
then 
	exit 85
fi

#tmp_file=$(mktemp)

for url in "$@"
do
	n_https=$(wget -q -O - "${url}"| grep -co 'https')
	echo "${url}, ${n_https}"


#	wget -O "${tmp_file}" "${url}"
#	while read line
#	do 
#		line_tokens=$(echo "${line}" |tr ' ' '\n')
#	done < "${tmp_file}"
done


