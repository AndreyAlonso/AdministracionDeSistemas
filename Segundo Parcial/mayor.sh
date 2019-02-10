#!/bin/bash
echo dame numero1, numero2, numero3
read N1 N2 N3
if [ $N1 -gt $N2 ]; then
	if [ $N1 -gt $N3 ]; then
		echo "$N1 es el mayor"
    elif [ $N3 -gt $N2 ]; then
    	echo "$N3 es el mayor"
    fi
elif [ $N2 -gt $N1 ]; then
	if [ $N2 -gt $N3 ]; then
		echo "$N2 es el mayor"
    elif [ $N3 -gt $N1 ]; then
    	echo "$N3 es el mayor"
    fi
elif [ $N3 -gt $N1 ]; then
if [ $N3 -gt $N2 ]; then
	echo "$N3 es el mayor"
elif [ $N2 -gt $N1 ]; then
	echo "$N2 es el mayor"
fi    