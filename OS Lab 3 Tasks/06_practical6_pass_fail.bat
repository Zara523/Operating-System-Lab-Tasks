@echo off

REM Ask student marks
set /p marks=Enter marks: 

REM Check result
if %marks% GEQ 50 (
    echo Result: PASS
) else (
    echo Result: FAIL
)

pause
