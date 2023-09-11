#!/bin/bash

valor=`cat $1 | wc -w`

echo "$valor"