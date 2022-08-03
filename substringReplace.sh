#!/bin/bash

function substringReplace {
	TEXTO=$1

	read -p "Ingrese la cadena que desea reemplazar: " cadena
	read -p "Ingrese la cadena por la cual desea reemplazar la anterior: " cadena2

	CAT=$(cat $TEXTO | sed s/áéíóú/aeiou/g | sed s/$cadena/$cadena2/g)

	echo $CAT
}
