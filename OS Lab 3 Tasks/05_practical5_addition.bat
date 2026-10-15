@echo off

REM Take first number
set /p num1=Enter first number: 

REM Take second number
set /p num2=Enter second number: 

REM Add numbers
set /a result=num1+num2

REM Display result
echo Sum = %result%

pause
