# CreateUser.ps1
param(
    [string]$Username,
    [string]$Password
)

Write-Host "Creating user account..." -ForegroundColor Cyan

$securePass = ConvertTo-SecureString $Password -AsPlainText -Force
New-LocalUser -Name $Username -Password $securePass -FullName $Username -Description "Created by Automation Toolkit"

Add-LocalGroupMember -Group "Users" -Member $Username

Write-Host "User account '$Username' created successfully."
