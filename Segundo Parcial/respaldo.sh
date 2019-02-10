#!/bin/bash
tar -czvf respaldo.tar.gz ../andreyhz/
scp respaldo.tar.gz oswa@148.224.55.142:./destino
echo "enviado"