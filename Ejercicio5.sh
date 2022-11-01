#!/bin/bash



if test $# -gt 1 
then 
    echo " numero incorrecto de elementos "
    exit 1
fi 
if test $# -eq 1 
then
    if test -d $1 
    then 

        echo "Se procedera a dar permisos apartir del directorio pasado como argumento"
         chmod +777 $1 -R

    echo "Permiso dados a todos los ficheros .sh"
    else
        echo " $1 No es un directorio"
        exit 1


    fi


else
    echo "Se procedera a dar permisos apartir del directorio actual"
    chmod +777 . -R
    echo "Permiso dados a todos los ficheros .sh"

fi 

exit 1
