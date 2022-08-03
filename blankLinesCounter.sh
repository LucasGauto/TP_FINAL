#!/bin/bash

function blankLinesCounter {

	TEXTO=$1

	newIFS=$IFS

	IFS=$'\n'

	COUNT=$((0))

	for i in $(cat $TEXTO)
	do
		if [ $i = " " ]
		then
			COUNT=$((COUNT+1))
		fi
	done

	echo "Hay un total de $COUNT lineas en blanco"

	IFS=$newIFS

	unset newIFS

}
