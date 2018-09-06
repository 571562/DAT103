#!/bin/bash

for filnamn in $*
do
	./filkontroll.sh "60" $filnamn 
done

