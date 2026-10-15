@echo off

REM Check if file exists
if exist report.txt (

    REM Create backup directory if needed
    if not exist Backup mkdir Backup

    REM Copy file
    copy report.txt Backup

    echo Backup completed.

) else (

    echo Error: report.txt was not found.

)

pause
