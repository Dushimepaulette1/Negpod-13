#!/bin/bash

# Define variables
DIRECTORY="negpod_13-q1"
FILES=("main.sh" "students-list_0524.txt" "select-emails.sh" "student-emails.txt")

# Create the directory if it doesn't exist
if [ ! -d "$DIRECTORY" ]; then
    mkdir "$DIRECTORY"
fi

# This moves the files into the directory
for FILE in "${FILES[@]}"; do
    if [ -f "$FILE" ]; then
        mv "$FILE" "$DIRECTORY"
    else
        echo "File $FILE does not exist."
    fi
done

echo "Files moved to $DIRECTORY."
