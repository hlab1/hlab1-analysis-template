#!/bin/bash
echo "Making data,envs,raw,results directories in $1 and symlinks to them in current diretory"
mkdir -p $1
for d in data envs raw results 
do

    mkdir $1/$d
    ln -s $1/$d $d
done

mkdir $1/envs/singularity_images
mkdir $1/envs/singularity_overlay

echo "Done!"
