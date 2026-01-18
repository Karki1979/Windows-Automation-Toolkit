# HealthCheck.ps1
Write-Host "Running system health check..." -ForegroundColor Cyan

Write-Host "`nDisk Space:"
Get-PSDrive -PSProvider FileSystem | Select-Object Name, Free, Used, @{Name="FreeGB";Expression={[math]::Round($_.Free/1GB,2)}}

Write-Host "`nWindows Update Status:"
Get-WindowsUpdateLog

Write-Host "`nImportant Services:"
$services = "wuauserv","bits","WinDefend"
Get-Service -Name $services
