#!/bin/bash

function blockSelection {

	TEXTO=$1
	#TIPO=$2

	read -p "Buscas una oracion (O) o un parrafo (P)?: " TIPO

	#compruebo si el archivo existe
	if [ -e $TEXTO ]
	then
		#si es oracion...
		
		if [ $TIPO = "O" ]
		then
			CAT=$(cat $TEXTO)

			newIFS=$IFS
			IFS=$'.'
			
			echo "Usted esta buscando una oracion"
			
			#POSICION=$3
			
			read -p "En que posicion quiere buscar?: " POSICION

			n=$((1))

			for oracion in $CAT
			do
				#echo $oracion
				if [ $n -eq $POSICION ]
				then
					echo "Oracion #$POSICION: $oracion"
					n=$((n+1))
				else
					n=$((n+1))
				fi

			done

			IFS=$newIFS
			unset newIFS

		elif [ $TIPO = "P" ]
		then
			CAT=$(cat $TEXTO)
			
			newIFS=$IFS
			IFS=$'\n'
			
			echo "Usted esta buscando un parrafo"
			
			#POSICION=$3
		
			read -p "En que posicion quiere buscar?: " POSICION

			n=$((1))
				
			for parrafo in $CAT
			do
				if [ $n -eq $POSICION ]
				then
					echo "Parrafo #$POSICION: $parrafo"
					n=$((n+1))
				else
					n=$((n+1))
				fi
			done
			
			IFS=$newIFS
			unset newIFS

		else
			echo "error en el tipo"
		fi
	else
		echo "El archivo $TEXTO no existe"
	fi
}
