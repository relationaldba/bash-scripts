```
while read -r line
do
    IFS=\, read -a fields <<<"$line"
    echo ${fields[0]} -- ${fields[1]}
done < /tmp/test
```

```
LOBCOUNT=$(psql \
    --host=127.0.0.1 \
    --username=postgres \
    --dbname="postgres" \
    --csv \
    --tuples-only \
    --field-separator=" " \
    --output="/tmp/${$}"  \
    --command="SELECT datname, datdba FROM pg_database;")
```

```
IFS=\, read -a fields <<<"$line"
        # echo ${fields[0]} -- ${fields[1]}

        # Create the large objects into destination
        PGPASSWORD=$SOURCEPGPASSWORD \
        PGSSLMODE=$SOURCEPGSSLMODE \
        psql \
        --host=$SOURCEPGSERVER \
        --port=$SOURCEPGPORT \
        --username=$SOURCEPGUSER \
        --dbname="$SOURCEPGDATABASE" \
        --command="SELECT pg_create_lo_from_bytea(${lobOid}, '${lobByteaData}');"
        [[ $? != 0 ]] && err "Unable to get the count of LOBs" && exit 1;
```

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


