#!/bin/bash
#
#
folder="ref_repo"
mkdir $folder
git clone https://github.com/rgomezh/campechano.git $folder
rm -rf $folder
echo "repo cloned, removing folder $folder"
