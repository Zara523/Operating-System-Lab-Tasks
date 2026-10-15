@echo off

set /p age=Enter your age: 

if %age% GEQ 18 (
    echo Eligible
) else (
    echo Not Eligible
)

pause
