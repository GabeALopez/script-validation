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

    if [ "$line" == "#!/bin/bash" ] && [ $line1 == true ]
    then
      echo "good"
      line1=false
      continue
    fi

    if [ "$line" = "if test -f $input2" ] && [ $line2 = true ]
    then
      echo "Very good"
      line2=false
      continue
    fi

    if [ "$line" = "asdf" ] && [ $line3 = true ]
    then
      echo "Congrats"
      line3=false
      break
    fi

  done < $input1 



else
  echo "The file does not exist."
fi

