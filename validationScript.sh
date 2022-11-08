#!/bin/bash

echo "Input file name"
IFS= read -r input1
input2="./$input1"
echo "$input2"

if test -f "$input2"
then

  while IFS= read -r line
  do
    
    case $line in
      *)
        echo "somthing" 
      ;;
    esac

  done < "$input2"

else
  echo "The file does not exist."
fi

