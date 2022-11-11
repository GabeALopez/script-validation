#!/bin/bash

echo "Input file name"
IFS= read -r input1
input2="./$input1"
line1=true
line2=false
line3=false

if test -f "$input2"
then

  while IFS= read -r line
  do
    


    if [ "$line" == "#!/bin/bash" ] && [ $line1 == true ]
    then
      echo "good"
      line1=false
      line2=true
      continue
    fi

    if [ "$line" = "if test -f \"$input2\"" ] && [ $line2 = true ]
    then
      echo "Very good"
      line2=false
      line3=true
      continue
    fi

    if [ "$line" = "else" ] && [ $line3 = true ]
    then
      echo "Congrats"
      line3=false
      echo $input1 | awk -F '.' '{print $1}' | xargs -I '{}' cp $input1 '{}'.sh
      exit
    fi

  done < $input1 



else
  echo "The file does not exist."
fi

