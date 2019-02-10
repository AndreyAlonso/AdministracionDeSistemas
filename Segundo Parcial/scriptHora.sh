#!/bin/bash
echo "creando archivo"
fecha=$(date +%Y_%m_%d_%H_%s)
echo $fecha
touch "archivo_$fecha+txt"