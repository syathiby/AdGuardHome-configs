@echo off
setlocal
set folder=%1
if "%folder%"=="" set folder="C:\AdGuardHome"

takeown /f %folder% /r /d y
icacls %folder% /grant administrators:F /t
icacls %folder% /grant Everyone:F /t

echo Ownership changed for %folder%
pause