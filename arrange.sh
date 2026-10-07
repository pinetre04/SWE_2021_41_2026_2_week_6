#!/bin/bash

for file in files/*
do
    if [[ -f "$file" ]]; then
        filename=${file#files/}
        first=${filename:0:1}
        first=${first,,}

        mv "$file" "$first/"
    fi
done