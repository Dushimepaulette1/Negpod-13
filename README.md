# ALU Registration System

## Description
This project consists of shell scripts to manage student records for the Bachelor of Software Engineering cohort at ALU. It includes functionalities to create, view, update, and delete student records, as well as to extract student emails and automate file management and backups.

## Files
1. `main.sh` - Main application script to manage student records.
2. `students-list_0524.txt` - File where student records are saved.
3. `select-emails.sh` - Script to extract student emails.
4. `student-emails.txt` - File where extracted student emails are saved.
5. `move-to-directory.sh` - Script to move files to a specific directory.
6. `backup-Negpod_13.sh` - Script to back up the directory to a remote server.

## Usage

### main.sh
1. Run the script: `./main.sh`
2. Follow the menu options to create, view, update, or delete student records.

### select-emails.sh
1. Run the script: `./select-emails.sh`
2. The emails will be extracted to `student-emails.txt`.

### move-to-directory.sh
1. Run the script: `./move-to-directory.sh`
2. The specified files will be moved to the `negpod_13-q1` directory.

### backup-Negpod_13.sh
1. Ensure `sshpass` is installed: `sudo apt-get install sshpass`
2. Run the script: `./backup-Negpod_13.sh`
3. The `negpod_13-q1` directory will be backed up to the remote server.

## Contributors and Task Allocation

- **Paulette**: Completed Question 1a (main.sh script)
- **Credo**: Completed Question 1b (select-emails.sh script)
- **Blair**: Completed Question 2a (move-to-directory.sh script)
- **Brave**: Completed Question 2b (backup-Negpod_13.sh script)
- **Cynthia**: Created the README file
- **Allan**: Wrote the report
- **Josue**: Helped with the video

## Project Overview

This project involves the creation of an application using shell scripts to manage student records for the Bachelor of Software Engineering cohort at ALU. The project requirements included the creation, viewing, updating, and deletion of student records, extracting student emails, and automating file management and backups.

## Conclusion

This project successfully implemented a shell scripting solution to manage student records for the ALU Bachelor of Software Engineering cohort. Each team member contributed effectively to their assigned tasks, resulting in a cohesive and functional application. The provided documentation and video further enhance the usability and understanding of the project.

