array=() # declare an array
array=("PHP" "MySQL" "Bash" "Oracle") # delcare and initialize an array
array+=("foo")
array+=("bar")
array[${#array[@]}]="baz" # add new element at the end of the array

for value in "${array[@]}"
do
     echo $value
done

# length of array
echo "items in array: ${#array[@]}"



###
## Declare an array
array=();
echo $array;

## Add elements to an array
array+=("one")

array+=("two")

echo ${array[@]}
```
one two
```

array+=("three")
echo ${array[@]}
```one two three```

## remove elements from an array
delete=two
echo ${array[@]/$delete}
```one three```

echo ${array[@]}
```one two three```

array=( "${array[@]/$delete}" )
echo ${array[@]}
```one three```


