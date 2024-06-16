#!/usr/bin/bash

test_colonwihhyfen()
{
    echo "${2:-you}"
    echo "Substring from position 2: ${1:-2}"
}

check_argumentnum(){
    if [ "$#" -eq 1 ]; then 
        echo "Hello, $1"
    else 
        echo "Usage: error_handling.sh <person>"
        exit 1
    fi
}

raindrop(){
    local num=$1
    local res="";
    if (( num % 3 == 0 )); then
        res+="Pling"
    fi
    if (( num % 5 == 0 )); then
        res+="Plang"
    fi
    if (( num % 7 == 0 )); then
        res+="Plong"
    fi
    if [ -z $res ]; then
        res="$num"
    fi

    echo "$res"
}

curly_braces(){
    echo "file{1..4}.tet"
    echo file{1..4}.txt
    echo {1..5}
    echo {a,b,bcc}
    echo {a..d}
    { echo "Hello"; echo "World"; }
}

main(){
    curly_braces
}

main "$@"