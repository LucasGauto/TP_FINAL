#!/bin/bash

function statsWords {
	local TEXTO=$1
	LONGITUDES=$((0))
	CANTIDAD=$((0))

	for i in $(cat $TEXTO)
	do
		LONGITUD=${#i}
		
		echo "$LONGITUD - $i" >> ordenar.txt
		
		LONGITUDES=$((LONGITUDES+$LONGITUD))
		CANTIDAD=$((CANTIDAD+1))
	done

	ORDENADO=$(cat ordenar.txt | sort -h)

	N=$((1))

	local newIFS=$IFS
	local IFS=$'\n'

	for i in $ORDENADO
	do
		if [ $N -eq 1 ]
		then
			echo "La palabra mas corta es: $i"
			N=$((N + 1))
		elif [ $N -eq $CANTIDAD ]
		then
			echo "La palabra mas larga es: $i"
			N=$((N + 1))
		else
			N=$((N+1))
		fi
	done

	local IFS=$newIFS
	unset newIFS

	#---- promedio -----

	PROMEDIO=$(($LONGITUDES/$CANTIDAD))

	echo "Total de longitudes de las palabras: $LONGITUDES"
	echo "Cantidad total de palabras: $CANTIDAD"

	echo "El promedio de longitudes es de $PROMEDIO"

	rm ordenar.txt
}
