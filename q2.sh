#!/bin/bash

echo "qual o caminho onde quer criar os diretórios meu amigo?"

read $caminho

cd "$caminho"

for ((i=1; i<=10; i++)); do
    mkdir "pasta$i"        
    echo "Criada a pasta: $i"
done