#!/bin/bash
fecha=$(date +%Y_%m_%d_%H_%s)
echo $fecha
tar -czvf carpeta_$fecha.tar.gz ../andreyhz/carpeta/
scp carpeta_$fecha.tar.gz oswa@148.224.55.142:./respaldo
echo "enviado"