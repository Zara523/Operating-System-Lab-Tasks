@echo off

REM ===== Automatic Student Record Generator =====
title Student Record Generator

REM Ask for student details
set /p name=Enter student name: 
set /p reg=Enter registration number: 
set /p semester=Enter semester: 

REM Create folder named after the registration number
if not exist "%reg%" mkdir "%reg%"

REM Enter the folder
cd "%reg%"

REM Create student.txt and save details
echo Student Name: %name% > student.txt
echo Registration Number: %reg% >> student.txt
echo Semester: %semester% >> student.txt

REM Create Backup folder
if not exist Backup mkdir Backup

REM Copy student.txt into Backup
copy student.txt Backup

REM Check whether the backup file exists
echo.
if exist Backup\student.txt (
    echo Backup Successful
) else (
    echo Backup Failed
)

REM Display complete directory structure
echo.
echo Directory Structure:
tree /f

echo.
pause
