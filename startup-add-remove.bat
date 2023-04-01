@echo off

title Voicemeeter No Crackle

set TASK_NAME=voicemeeter-no-crackle
set SCRIPT_NAME=audiodg-fix.ps1
set ARGUMENTS=-ExecutionPolicy Bypass -File C:\%SCRIPT_NAME%

net session >nul 2>&1 || (
    echo This script reqiers administrative privileges.
    pause
    exit
)

:menu

cls

echo Choose an option:
echo 1. Add To Startup
echo 2. Remove From Startup
echo 3. Exit
choice /c 123 /n

cls

if errorlevel 3 (
    exit
)

if errorlevel 2 (
    schtasks /delete /tn %TASK_NAME% /f
    del C:\audiodg-fix.ps1
    pause
)

if errorlevel 1 (
    cd %~dp0
    copy %SCRIPT_NAME% C:\
    schtasks /create /tn %TASK_NAME% /sc onlogon /delay 0000:30 /tr "powershell %ARGUMENTS%" /ru system /rl highest /f
    echo Task created: %TASK_NAME%
    pause
)

goto :menu