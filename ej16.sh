#!/bin/bash
#!/bin/bash
re='\.txt$'
 for file in ./*
 do
echo $file
 if [[ "$file" =~ $re ]]
 then
	echo "Match found: $file"
fi
 done
