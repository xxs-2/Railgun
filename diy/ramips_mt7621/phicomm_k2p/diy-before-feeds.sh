#!/bin/bash

function git_sparse_clone() {
    git clone --filter=blob:none --no-checkout --depth=1 $1 $2 && cd $2
    git sparse-checkout init --cone
    git sparse-checkout set $3
    git checkout
    mv $3 ../$4
    cd ../ && rm -rf $2
}

git clone https://github.com/Zxilly/UA2F package/UA2F
