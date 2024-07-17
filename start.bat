@echo off
setlocal

set "scriptPath=%~dp0spicetify.ps1"


openfiles >nul 2>&1
if %errorlevel% NEQ 0 (
    echo Running the script as Administrator...
    powershell -Command "Start-Process '%comspec%' -ArgumentList '/c', '%~dpnx0', 'runAsAdmin' -Verb RunAs"
    exit /b
)


powershell -NoProfile -ExecutionPolicy Bypass -File "%scriptPath%"

endlocal
pause
