#!/bin/bash
#
# Creating temp folder
folder="ref_repo"
diff_folder="diff"
mkdir $folder
mkdir $diff_folder

# Cloning repo into folder
git clone https://github.com/rgomezh/campechano.git $folder
list_origin=$(find . -name '*.out')
list_ref=$(find $folder -name '*.out')

i=0
for file in $list_ref; do
    echo $i $file
    file0=${list_origin[$i]}
    diff $file0 file > $diff_folder/$file0.diff
    i=$((i+1))
    
done

#Deleting folder
rm -rf $folder
##rm -rf $diff_folder
echo "repo cloned, removing folder $folder"
