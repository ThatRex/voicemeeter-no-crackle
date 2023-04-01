# Check if script is being run with administrator privileges
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    # Prompt user to elevate script
    Start-Process PowerShell -Verb RunAs -ArgumentList "-File", ('"{0}"' -f $MyInvocation.MyCommand.Path)
    exit
}

$Process = Get-Process -Name audiodg

if ($Process -ne $null) {
    # Set the processor affinity of the process to use only core 1
    $Process.ProcessorAffinity = 1

    # Set the priority class of the process to RealTime
    $Process.PriorityClass = [System.Diagnostics.ProcessPriorityClass]::RealTime
} else {
    Write-Output "Could not find audiodg.exe process"
}