#!/bin/bash
declare -i tid=$1
filnamn=$2

if [ ! -f $filnamn ]
then
	echo "Fila $filnamn er oppretta."
	touch $filnamn
else
	ed=`stat -c %Y $filnamn` #henter verdi på kva tid den blei  sist endra
	#-c %Y tyder at ein ikkje tar med året
	while [ -f $filnamn ]
		do 
		sleep $tid
		if [ ! -f $filnamn ]
		then
			echo "Fila $filnamn har blitt sletta."
			exit
		elif [ $ed != `stat -c %Y $filnamn` ]
		then
			echo "Fila $filnamn har blitt endra."
			exit
		fi
	done
	fi
exit
