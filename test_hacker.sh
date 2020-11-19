#!/bin/bash
#
#
folder="ref_repo"
mkdir $folder
cd $folder
#git clone https://github.com/rgomezh/campechano.git
cd ..
rm -r $folder
echo "repo cloned, removing folder $folder"
