#!/bin/bash

if ! test -f "canary/src/copy-files/source/$1"; then
    echo "canary/src/copy-files/source/$1 doesn't exist."
    exit 1
fi

if ! test -f "canary/src/copy-files/target/$1"; then
    echo "canary/src/copy-files/target/$1 doesn't exist."
    exit 1
fi


if [ "canary/src/copy-files/source/$1" -ot "canary/src/copy-files/target/$1" ]; 
then
    echo "Timestamp for $1 file in source and target directories aren't equel";
    exit 1;
fi
