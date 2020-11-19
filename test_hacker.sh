#!/bin/bash
#
# Creating temp folder
folder="ref_repo"
mkdir $folder

# Cloning repo into folder
git clone https://github.com/rgomezh/campechano.git $folder
listFiles=$(find $folder -name '*.out')
echo $listFiles

for file in $listFiles; do
echo $file
done

#Deleting folder
rm -rf $folder
echo "repo cloned, removing folder $folder"
