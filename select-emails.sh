#!/bin/bash

STUDENT_FILE="students-list_0524.txt"
EMAIL_FILE="student-emails.txt"

if [ ! -f "$STUDENT_FILE" ]; then
    echo "No student records found."
    exit 1
fi

cut -d',' -f2 "$STUDENT_FILE" > "$EMAIL_FILE"
echo "Student emails have been saved to $EMAIL_FILE."
