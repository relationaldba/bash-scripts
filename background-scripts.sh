function bgfunc1 () {

    local arg=$1
    echo "bgfunc1 begin ${arg}"
    sleep 0.5
    echo "bgfunc1 end ${arg}"
    return $?
}

function bgfunc2 () {

    for i in 1 2 
    do
        bgfunc1 "${i}a" &
        BGPID_bg+="${!} "
    done

    for p_bg in $BGPID_bg
    do
        if wait $p; then
            echo "bgfunc2 subprocess ${p_bg} succeeded"
        else
            echo "bgfunc2 subprocess ${p_bg} failed"
        fi
    done
    return $?
}

BGPID_fg=()
for i in 1 2 
do
    bgfunc2 $i &
    BGPID_fg+=("${!}")
done

for p_fg in $BGPID_fg
do
    if wait $p; then
        echo "main subprocess ${p_fg} succeeded"
    else
        echo "main subprocess ${p_fg} failed"
    fi
done
