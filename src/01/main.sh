#!/bin/bash

re='^[A-Za-z]+$' 

if [[ -z "$2"  &&  $1 =~ $re ]]
then
    echo "$1"
else
    echo "Должен быть один текстовый параметр, перезапусти скрипт"
fi