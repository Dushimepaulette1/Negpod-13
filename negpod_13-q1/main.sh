#!/bin/bash

# Define the file to store student records
STUDENT_FILE="students-list_0524.txt"

# Function to display the main menu
display_menu() {
    clear
    echo "**************************************************"
    echo "****** Welcome to our App ******"
    echo "**************************************************"
    echo ""
    echo "What would you like to do today?"
    echo ""
    echo "Main Menu"
    echo "1. Add New Student"
    echo "2. View All Students"
    echo "3. Update Student"
    echo "4. Delete Student"
    echo "5. Save Student Emails Sorted in ASC"
    echo "6. View All Emails Only in ASC Order"
    echo "7. Backup your data"
    echo "8. Exit"
    echo ""
    echo -n "Enter your choice (1-8): "
}

# Function to add a new student
add_student() {
    echo -n "Enter Student ID: "
    read student_id
    echo -n "Enter Student Email: "
    read student_email
    echo -n "Enter Student Age: "
    read student_age

    echo "$student_id,$student_email,$student_age" >> $STUDENT_FILE
    echo "Student record added successfully."
}

# Function to view all students
view_students() {
    if [[ ! -f $STUDENT_FILE ]]; then
        echo "No student records found."
        return
    fi
    echo "Student Records:"
    cat $STUDENT_FILE | while IFS=, read -r id email age; do
        echo "ID: $id, Email: $email, Age: $age"
    done
}

# Function to update a student record
update_student() {
    echo -n "Enter Student ID to update: "
    read student_id
    if [[ ! -f $STUDENT_FILE ]]; then
        echo "No student records found."
        return
    fi
    grep -v "^$student_id," $STUDENT_FILE > temp.txt
    mv temp.txt $STUDENT_FILE

    echo -n "Enter New Email: "
    read new_email
    echo -n "Enter New Age: "
    read new_age

    echo "$student_id,$new_email,$new_age" >> $STUDENT_FILE
    echo "Student record updated successfully."
}

# Function to delete a student record
delete_student() {
    echo -n "Enter Student ID to delete: "
    read student_id
    if [[ ! -f $STUDENT_FILE ]]; then
        echo "No student records found."
        return
    fi
    grep -v "^$student_id," $STUDENT_FILE > temp.txt
    mv temp.txt $STUDENT_FILE
    echo "Student record deleted successfully."
}

# Function to save student emails sorted in ascending order
save_sorted_emails() {
    if [[ ! -f $STUDENT_FILE ]]; then
        echo "No student records found."
        return
    fi
    cut -d, -f2 $STUDENT_FILE | sort > sorted_emails.txt
    echo "Student emails saved in sorted_emails.txt."
}

# Function to view all emails only in ascending order
view_sorted_emails() {
    if [[ ! -f $STUDENT_FILE ]]; then
        echo "No student records found."
        return
    fi
    echo "Student Emails in Ascending Order:"
    cut -d, -f2 $STUDENT_FILE | sort
}

# Function to backup data
backup_data() {
    cp $STUDENT_FILE "${STUDENT_FILE}_backup"
    echo "Backup created successfully."
}

# Main loop
while true; do
    display_menu
    read choice
    case $choice in
        1) add_student ;;
        2) view_students ;;
        3) update_student ;;
        4) delete_student ;;
        5) save_sorted_emails ;;
        6) view_sorted_emails ;;
        7) backup_data ;;
        8) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice, please try again." ;;
    esac
    echo "Press Enter to continue..."
    read
done
