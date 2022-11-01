#!/bin/bash

if test $# -gt 1 
then 
    echo " numero incorrecto de elementos "
    exit 1
fi 
if test $# -eq 1 
then 
    echo "Se procedera a buscar en el directorio pasado como argumento"
    du $0 -aBm | sort -nr | head -2

else
    echo "Se procedera a buscar en el directorio actual"
     du -aBm | sort -nr | head -2
fi 

exit 1
