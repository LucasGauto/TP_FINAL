#!/bin/bash

function statsUsageWords {

	local TEXTO=$1

	local contador=0

	for palabra in $(cat $TEXTO | sort | uniq)
	do
		if [ $contador -eq 0 ]
		then
		
			if [ ${#palabra} -ge 4 ]
			then
				for palabra2 in $(cat $TEXTO)
				do
					if [[ $palabra = $palabra2 ]]
					then
						local contador=$((contador+1))
					else
						continue
					fi
				
					#echo "$contador - $palabra"			
				done
				echo "$contador apariciones: $palabra" >> statsUsageWords.txt
			fi
		else
			local contador=0
		fi
	done


	echo "Top Ten de palabras con mas apariciones: "

	cat statsUsageWords.txt | sort | uniq | sort -r | head --lines=10

	rm statsUsageWords.txt

}
