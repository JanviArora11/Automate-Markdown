@echo off

set REPO_PATH=%~dp0
set STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup

echo @echo off > "%STARTUP%\git-sync.bat"

echo powershell -WindowStyle Hidden -Command "while ($true) { git -C '%REPO_PATH%' pull origin main; Start-Sleep -Seconds 300 }" >> "%STARTUP%\git-sync.bat"

echo.
echo Setup completed successfully.
echo Auto-sync will start on next login.
pause
