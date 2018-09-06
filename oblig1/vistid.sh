#!/bin/bash
filnamn=$1
echo Kva er hendinga?
read hending

cat $filnamn | grep -ioP "$hending\s+\K\w+" | awk '{ SUM += $hending } END { print SUM }'

