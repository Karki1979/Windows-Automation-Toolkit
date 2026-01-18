# Toolkit.ps1
Write-Host "Windows Automation Toolkit" -ForegroundColor Green
Write-Host "1. System Info"
Write-Host "2. Create User"
Write-Host "3. Install Software"
Write-Host "4. Health Check"

$choice = Read-Host "Select an option"

switch ($choice) {
    1 { .\SystemInfo.ps1 }
    2 { 
        $user = Read-Host "Enter username"
        $pass = Read-Host "Enter password"
        .\CreateUser.ps1 -Username $user -Password $pass
    }
    3 { .\InstallSoftware.ps1 }
    4 { .\HealthCheck.ps1 }
    default { Write-Host "Invalid option" }
}
