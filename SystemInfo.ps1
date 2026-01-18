# SystemInfo.ps1
Write-Host "Collecting system information..." -ForegroundColor Cyan

$computer = Get-ComputerInfo
$os = Get-WmiObject Win32_OperatingSystem
$cpu = Get-WmiObject Win32_Processor
$ram = [math]::Round((Get-WmiObject Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2)

Write-Host "Computer Name: $($computer.CsName)"
Write-Host "OS: $($os.Caption)"
Write-Host "CPU: $($cpu.Name)"
Write-Host "RAM: $ram GB"