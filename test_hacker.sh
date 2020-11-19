#!/bin/bash
#
# Creating temp folder
folder="ref_repo"
diff_folder="diff"
mkdir $folder
mkdir $diff_folder

# Cloning repo into folder
git clone https://github.com/rgomezh/campechano.git $folder
list_origin=$(find . -maxdepth 1 -name '*.out'|sort) 
list_ref=$(find $folder -maxdepth 1 -name '*.out' | sort)

i=0
for file in $list_ref; do
    echo $i $file
    #echo ${list_origin[0]}
    #diff ${fileOriginal} file > $diff_folder/$fileOrginal.diff
    i=$((i+1))
    
done

#Deleting folder
rm -rf $folder
##rm -rf $diff_folder
echo "repo cloned, removing folder $folder"
