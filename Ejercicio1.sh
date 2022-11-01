#!/bin/bash
if test  $# -gt 1
then
 echo "Numero de parametros incorrecto"
 exit 1
fi
if test $# -eq 0
then
    echo "No se ha indicado la ruta en la que realizar la busqueda asique se buscara apartir del directorio de  trabajo"
    find  / -name  'a*' -o -name 'b*'

fi
if test $# -eq 1
then
    if test -d $1
        echo "Se realizara la busqueda en el siguiente directorio"
        echo $1
        find $1 -name  'a*' -o -name 'b*'
    else
        echo "El directorio no existe"
        exit 1
    fi
fi
