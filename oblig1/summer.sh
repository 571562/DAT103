#!/bin/bash
declare -i sum=0
declare -i nummer #ingen verdi, dei skriv brukaren inn
while read nummer
do
((sum+=nummer))
done
echo "Dette er summen: $sum"

exit


