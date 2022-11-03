#!/bin/bash
echo "Making data,raw,results directories in $1 and symlinks to them in current diretory"
mkdir -p $1
for d in data raw results
do

    mkdir $1/$d
    ln -s $1/$d $d
done

echo "Done!"
