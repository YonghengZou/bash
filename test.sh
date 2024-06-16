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

    # Variable Substitution
    # Curly braces can be used in variable substitution to clearly delimit the variable name from surrounding text.
    name=({a..c})
    echo "Hello, ${name[@]}"
    # Output: Hello, John!

    # Useful to avoid ambiguity
    number=5
    echo "This is item ${number}."
    # Output: This is item 5A.
    number=(1 2 3 4 4)
    echo "This is item ${number[0]}."

}

get_length(){
    local s1="$1" # or s1=$1
    echo "${#s1}" # or echo "${@s1}"
}

equal_string(){

    # -ne: Used for numeric comparisons. It checks if two numbers are not equal.
    # !=: Used for string comparisons. It checks if two strings are not equal.
    local s1=$1
    local s2=$2

    if [ ${#s1} -eq ${#s2} ]; then
        echo "equa"
    else
        echo "not equa"
    fi

}

main(){
    equal_string "$@"
}

main "$@"