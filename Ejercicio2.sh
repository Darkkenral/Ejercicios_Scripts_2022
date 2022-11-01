#!/bin/bash
if test  $# -gt 1
then
 echo "Numero de parametros incorrecto"
 exit 1
fi
if test $# -eq 0
then
    echo 'Es necesario pasar por patametro el nombre a buscar'
    exit 1
fi
VAR=$(echo $PATH| tr ":" "\n")

for i in $VAR
do 
    echo |find $i -name $1
done