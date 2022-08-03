#!/bin/bash

function palindromos {

	source revertir.sh

	TEXTO=$1


	CAT=$(cat $TEXTO | tr [:upper:] [:lower:] | sed s/üéáíóú/ueaiou/g)

	for i in $CAT
	do

		mitad=$((${#i}/2))
		mitadMas1=$((mitad+1))
		longitud=${#i}
		
		PrimeraMitad=${i:0:$mitad}
		#SegundaMitad=${i:$mitadMas1:$longitud}
		PrimeraAlReves=$(revertir $PrimeraMitad)

		if [ $(($longitud%2)) -eq 0 ]
		then
			SegundaMitadPar=${i:$mitad:$longitud}

			if [ $SegundaMitadPar = $PrimeraAlReves ]
			then
				echo $i
			fi
		
		elif [ $(($longitud%2)) -gt 0 ]
		then
			SegundaMitadImpar=${i:$mitadMas1:$longitud}

			if [ $SegundaMitadImpar = $PrimeraAlReves ]
			then
				echo $i
			fi
		else
			echo "Error"
		fi

	done

}
