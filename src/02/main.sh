#!/bin/bash
. output.sh

output

echo "Записать данные в файл?  Y/N"
read answer;

if [[ $answer = y ]] || [[ $answer = Y ]]      
then
        file=`date +"%d_%m_%Y_%H_%M_%S".status`
        output>$file
fi
