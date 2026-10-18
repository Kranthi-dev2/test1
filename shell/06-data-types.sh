#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total:: $SUM"

echo "Script name is: $0"

echo "All arguments are: $@"

echo "Total argguments count: $#"
