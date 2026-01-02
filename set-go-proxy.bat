@echo off
echo Setting Go proxy to China mirror...

REM Set Go module proxy
setx GOPROXY "https://goproxy.cn,direct"
setx GOSUMDB "off"

echo.
echo Go proxy set to: https://goproxy.cn,direct
echo.
echo Please restart VSCode or command prompt to apply changes
echo.
echo Then run the following command to install gopls:
echo   go install golang.org/x/tools/gopls@latest
echo.

pause
