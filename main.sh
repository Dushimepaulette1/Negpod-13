#!/bin/bash

STUDENT_FILE="students-list_0524.txt"

# Function to create a student record
create_student() {
    read -p "Enter Student Email: " email
    read -p "Enter Student Age: " age
    read -p "Enter Student ID: " student_id

    echo "$student_id,$email,$age" >> "$STUDENT_FILE"
    echo "Student record created successfully."
}

# Function to view all student records
view_students() {
    if [ ! -f "$STUDENT_FILE" ]; then
        echo "No student records found."
        return
    fi

    echo "Student Records:"
    cat "$STUDENT_FILE"
}

# Function to delete a student record
delete_student() {
    read -p "Enter Student ID to delete: " student_id

    if [ ! -f "$STUDENT_FILE" ]; then
        echo "No student records found."
        return
    fi

    grep -v "^$student_id," "$STUDENT_FILE" > temp.txt && mv temp.txt "$STUDENT_FILE"
    echo "Student record deleted successfully."
}

# Function to update a student record
update_student() {
    read -p "Enter Student ID to update: " student_id

    if [ ! -f "$STUDENT_FILE" ]; then
        echo "No student records found."
        return
    fi

    grep -v "^$student_id," "$STUDENT_FILE" > temp.txt
    mv temp.txt "$STUDENT_FILE"

    read -p "Enter new Student Email: " email
    read -p "Enter new Student Age: " age

    echo "$student_id,$email,$age" >> "$STUDENT_FILE"
    echo "Student record updated successfully."
}

# Menu
while true; do
    echo "-------------------------"
    echo "ALU Student Registration System"
    echo "-------------------------"
    echo "1. Create Student Record"
    echo "2. View All Students"
    echo "3. Delete Student Record"
    echo "4. Update Student Record"
    echo "5. Exit"
    echo "-------------------------"
    read -p "Enter your choice: " choice

    case $choice in
        1) create_student ;;
        2) view_students ;;
        3) delete_student ;;
        4) update_student ;;
        5) exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done

