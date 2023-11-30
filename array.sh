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

# Use unset to delete an element in an array
for i in ${!bgpids[@]}
        do

            p=${bgpids[i]}
            # Check if the folder /proc/pid exists. 
            # If exists then the pid still running, if no then pid is finished execution
            # Check the exit code of the finished pid and remove the pid from the bgpids array
            if [[ ! -d "/proc/${p}" ]]
            then
                if wait $p
                then
                    log "Blob backup subprocess ${p} succeeded";
                else
                    err "Blob backup subprocess ${p} failed";
                    return_code=1;
                    break 2;
                    # return $return_code;
                fi

                # remove the pid from the bgpids array
                unset bgpids[i]
            fi

        done