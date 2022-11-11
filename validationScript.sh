#!/bin/bash

echo "Input file name"
IFS= read -r input1
input2="./$input1"
line1=true
line2=true
line3=true

if test -f "$input2"
then

  while IFS= read -r line
  do

    if [ "$line" == "1234" ] && [ $line1 == true ]
    then
      echo "test"
      line1=false
      continue
    fi

    if [ "$line" = "moi" ]
    then
      echo "test again"
      continue
    fi

    if [ "$line" = "asdf" ]
    then
      echo "try again"
      break
    fi

  done < $input1 



else
  echo "The file does not exist."
fi

