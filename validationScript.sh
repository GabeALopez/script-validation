#!/bin/bash

echo "Input file name"
IFS= read -r input1
input2="./$input1"

if test -f "$input2"
then

  while IFS= read -r line
  do
    
    case $line in
      "#!/bin/bash")
        echo "$line" 
          
        esac

      ;;

    esac
    echo "$line"

  done < "$input2"

else
  echo "The file does not exist."
fi

