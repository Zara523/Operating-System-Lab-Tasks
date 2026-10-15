@echo off

REM Set CMD window title
title OS Lab Student Automation

REM Ask for student name
set /p name=Enter student name: 

REM Create main folder
mkdir Student_Record

REM Enter folder
cd Student_Record

REM Create student information file
echo Student Name: %name% > student.txt
echo Course: Operating Systems >> student.txt
echo Lab: Batch Scripting >> student.txt

REM Create backup folder if it does not exist
if not exist Backup mkdir Backup

REM Copy information file into backup
copy student.txt Backup

REM Display contents
echo.
echo Student Record:
type student.txt

echo.
echo Automation completed successfully.

pause
