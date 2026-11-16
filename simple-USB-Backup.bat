@echo off
setlocal

REM ==========================================================
REM  You only need to change these 2 lines:
REM ==========================================================

set "SOURCE=E:\"

set "BACKUP_ROOT=D:\.BACKUPS\Pendrive"

REM ==========================================================
REM  No need to change anything below this line
REM ==========================================================

if "%SOURCE%"=="." set "SOURCE=%~dp0"
if not "%SOURCE:~-1%"=="\" set "SOURCE=%SOURCE%\"

if not exist "%SOURCE%" (
    powershell -NoProfile -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Source folder does not exist.','Backup',0,16)"
    exit /b 1
)

for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd_HH-mm-ss"') do set "TIMESTAMP=%%i"
set "DEST=%BACKUP_ROOT%\backup_%TIMESTAMP%"

echo Source:      %SOURCE%
echo Destination: %DEST%
echo Copying...

robocopy "%SOURCE%." "%DEST%" /E /R:1 /W:1 /XD "System Volume Information" "$RECYCLE.BIN"

REM robocopy returns 0-7 on success, 8 or more on errors
if %ERRORLEVEL% LSS 8 (
    powershell -NoProfile -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Backup completed in: %DEST%','Backup',0,64)"
) else (
    powershell -NoProfile -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Backup finished with errors.','Backup',0,16)"
)
