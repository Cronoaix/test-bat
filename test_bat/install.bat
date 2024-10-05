@echo off
REM Get the current working directory
set "CURRENT_DIR=%cd%"
set "BIN_PATH=%CURRENT_DIR%\bin"

if not exist "%BIN_PATH%" (
    echo The 'bin' folder does not exist in the current directory.
    pause
    exit /b
)

echo Found bin path: %BIN_PATH%

REM Check if the 'bin' folder is already in the PATH
echo %PATH% | find /I "%BIN_PATH%" > nul
if %ERRORLEVEL%==0 (
    echo The 'bin' folder is already in the PATH.
) else (
    REM Add the 'bin' folder to the PATH
    setx PATH "%PATH%;%BIN_PATH%"
)

echo Install success!

pause