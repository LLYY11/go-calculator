$env:GOPROXY="https://goproxy.cn,direct"
$env:GOSUMDB="off"

Write-Host "Installing gopls with China proxy..."
Write-Host "GOPROXY: $env:GOPROXY"
Write-Host ""

go install golang.org/x/tools/gopls@latest

Write-Host ""
Write-Host "Installation completed!"
Write-Host "Please restart VSCode to activate gopls."
