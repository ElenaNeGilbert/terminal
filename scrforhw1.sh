#!/bin/bash

FOLDER="folder_for_skr"
 rm -r ${FOLDER}
mkdir ${FOLDER}
echo "go to ${FOLDER}"
cd $FOLDER
echo "create 3 new folders"
mkdir folder_{1..3}
echo "go to folder_1"
cd folder_1
echo "go back to ${FOLDER}"
cd ..
echo "create 5 new files"
touch fileskr{1..3}.txt fileskr{4..5}.json
echo "${FOLDER} contains:"
ls -la
pwd
echo "move 2 files to folder_2"
mv fileskr{1..2}.txt folder_2/
exit 0