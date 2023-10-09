array=() # declare an array
arrVar1=("PHP" "MySQL" "Bash" "Oracle") # delcare and initialize an array
array+=("foo")
array+=("bar")
array[${#array[@]}]="baz" # add new element at the end of the array

for value in "${array[@]}"
do
     echo $value
done

echo "items in array: ${#array[@]}"