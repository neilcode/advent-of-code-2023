# !/bin/bash

# Check if a folder name is provided
if [ -z "$1" ]; then
  echo "Please provide a folder name."
  exit 1
fi

FOLDER_NAME=$1
echo "Creating next Advent Day: $FOLDER_NAME"

# Create the folder
mkdir -p $FOLDER_NAME

# Create the files inside the folder
cp ./newDayTemplate.js $FOLDER_NAME/index.js
cp ./newDayTemplate.test.js $FOLDER_NAME/index.test.js
touch $FOLDER_NAME/input.txt
touch $FOLDER_NAME/README.md

echo "Folder and files created successfully."

