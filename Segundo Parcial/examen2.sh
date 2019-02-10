#!/bin/bash
echo "Nombre Archivo: " $1
ls -l $1
OPTION="cambiaPropietario cambiaGrupo cambiaPermiso cambiaNombre copia"
select opt in $OPTION; do
	if [ $opt = "cambiaPropietario" ]; then
		echo "Nombre usuario"
		read usuario
		sudo adduser $usuario
		sudo chown $usuario $1
		ls -l $1
	elif [ $opt = "cambiaGrupo" ]; then
		echo "Nombre grupo"
		read grupo
		sudo addgroup $grupo
		sudo chown $grupo $1
		ls -l $1
	elif [ $opt = "cambiaPermiso" ]; then
		echo "Introduce Permisos"
		read permiso
		sudo chmod $permiso $1
		ls -l $1
	elif [ $opt = "cambiaNombre "]; then
		echo "Introduce nuevo nombre"
		read nombre
		cp $1 $nombre
		rm $1
		ls -l $nombre
	elif [ $opt = "copia" ]; then
		echo "Introduce directorio"
		read directorio
		cp $1 $directorio
	fi
done