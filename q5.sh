#!/bin/bash

# Baixa a dependência bc
sudo apt install bc

# Função para realizar a adição
addition() {
  result=$(echo "scale=2; $1 + $2" | bc)
  echo "Resultado: $result"
}

# Função para realizar a subtração
subtraction() {
  result=$(echo "scale=2; $1 - $2" | bc)
  echo "Resultado: $result"
}

# Função para realizar a multiplicação
multiplication() {
  result=$(echo "scale=2; $1 * $2" | bc)
  echo "Resultado: $result"
}

# Função para realizar a divisão
division() {
  if [ $2 -eq 0 ]; then
    echo "Erro: Divisão por zero não é permitida."
  else
    result=$(echo "scale=2; $1 / $2" | bc)
    echo "Resultado: $result"
  fi
}

# Menu principal
while true; do
  echo "Calculadora Básica"
  echo "1. Adição"
  echo "2. Subtração"
  echo "3. Multiplicação"
  echo "4. Divisão"
  echo "5. Sair"

  read -p "Escolha uma opção (1/2/3/4/5): " choice

  case $choice in
    1)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      addition $num1 $num2
      ;;
    2)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      subtraction $num1 $num2
      ;;
    3)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      multiplication $num1 $num2
      ;;
    4)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      division $num1 $num2
      ;;
    5)
      echo "Saindo da calculadora."
      exit 0
      ;;
    *)
      echo "Opção inválida. Por favor, escolha uma opção válida (1/2/3/4/5)."
      ;;
  esac
done