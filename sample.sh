#!/bin/bash

a=$1
b=$2
if [[ !  "$1" =~ ^[0-9]+$ ]] || [[ ! "$2" =~ ^[0-9]+$ ]];then
	echo "$1 is not a number"

fi
