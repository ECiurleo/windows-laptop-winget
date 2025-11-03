# Software Installation Script
Write-Host "Starting software installation..." -ForegroundColor Green

# Install applications with error handling, add any new products below
$apps = @(
    "7zip.7zip",
    "TeamViewer.TeamViewer", 
    "Microsoft.Office",
    "Microsoft.VisualStudioCode"
)

foreach ($app in $apps) {
    Write-Host "Installing $app..." -ForegroundColor Yellow
    try {
        winget install -e --silent --accept-package-agreements --id $app
        Write-Host "$app installed successfully" -ForegroundColor Green
    }
    catch {
        Write-Host "Failed to install $app : $($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host "Installation process completed!" -ForegroundColor Green
