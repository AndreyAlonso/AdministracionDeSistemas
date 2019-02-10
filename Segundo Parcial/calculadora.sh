#!/bin/bash
echo NUMERO1, NUMERO2
read n1 n2
OPTIONS="SUMA RESTA MULTIPLICACION "
select opt in $OPTIONS; do
	if [ $opt = "SUMA" ]; then
		echo $(($n1 + $n2))
	fi
	if [ $opt = "RESTA" ]; then
		echo $(($n1 - $n2))
	fi
	if [ $opt = "MULTIPLICACION" ]; then
		echo $(($n1 * $n2))
	fi
done