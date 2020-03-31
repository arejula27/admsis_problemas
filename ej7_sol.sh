#!/bin/bash

stty -echo # para que no se vea el password desactiva echo"
printf "Escriba el password: "
read password
stty echo
printf "\n"

echo "${password}" | grep '[[:digit:]]' | grep '[[:lower:]]' | grep '[[:upper:]]' | grep -q -E '.{8,}'

if [ $? -ne 0 ]
then 
echo "${password} invalido"
	exit 1	
fi

#aqui usar chpassword
#PAM hace esta msima comprobacion
