# InstallSoftware.ps1
Write-Host "Installing software..." -ForegroundColor Cyan

$apps = @(
    "Google.Chrome",
    "Microsoft.VisualStudioCode",
    "7zip.7zip"
)

foreach ($app in $apps) {
    Write-Host "Installing $app..."
    winget install --id $app --silent --accept-source-agreements --accept-package-agreements
}

Write-Host "Software installation complete."
