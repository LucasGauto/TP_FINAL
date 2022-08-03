#!/bin/bash

function revertir {
	STR="$1"

	longitud=${#STR}

	revertir=""

	for (( i=$longitud-1; i>=0; i-- ))
	do
		revertir="$revertir${STR:$i:1}"
	done

	echo "$revertir"
}
