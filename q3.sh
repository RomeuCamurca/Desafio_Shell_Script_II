#!/bin/bash 
echo "Tamanho da senha: "
read  tamanho

senha=`cat /dev/urandom | tr -dc 'a-z-A-Z-0-9' | head -c $tamanho`

echo "$senha"