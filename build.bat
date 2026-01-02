@echo off
echo Building Go calculator executables...
echo.

REM Build command line calculator
echo Building calculator.exe...
go build -o calculator.exe calculator.go
if %errorlevel% equ 0 (
    echo [SUCCESS] calculator.exe created
) else (
    echo [ERROR] Failed to build calculator.exe
)

echo.

REM Build web calculator
echo Building web_calculator.exe...
go build -o web_calculator.exe web_calculator.go
if %errorlevel% equ 0 (
    echo [SUCCESS] web_calculator.exe created
) else (
    echo [ERROR] Failed to build web_calculator.exe
)

echo.
echo ========================================
echo Build completed!
echo.
echo Executables:
echo   - calculator.exe (Command line calculator)
echo   - web_calculator.exe (Web calculator)
echo ========================================
echo.
pause
