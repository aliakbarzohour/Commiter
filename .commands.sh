#!/bin/bash

function create() {
    git init
    echo "$(tput setaf 2)" "[*] Now You Have Git ..." "$(tput sgr0)"
    git add -A

    echo " [?] What Commit ? : "
    read -n commit
    git commit -m $commit

    # Clean Terminal
    clear
}
