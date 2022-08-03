#!/bin/bash

function findNames {

	TEXTO=$1

	echo -e "Lista de nombres: \n"

	CAT=$(cat $TEXTO)

	for i in $CAT;
	do
		echo $i | grep ^[ABCDEFGHIJKLMNOPQRSTUVWXYZ]
	done
}
