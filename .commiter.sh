#!/bin/bash

function Checkdir() {
    # check directory
    if [ -d "./.git" ]; then
        echo "$(tput setaf 2)" "[$] You Have a .git Directory " "$(tput sgr0)"
        # echo "directory \".git\" exists"
        git add -A
        echo " [?] What Commit ? : "
        read -n commit
        git commit -m $commit
    else
        git init
        git add -A
        git commit -m 'First Commit . . .'
    fi

}

function commiter() {
    # main function
    Checkdir
    clear
}
