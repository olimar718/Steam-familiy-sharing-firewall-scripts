#block steam's connection

# get the location of the script file 
$mypath = $MyInvocation.MyCommand.Path
$mypath=Split-Path $mypath -Parent
# and source the setting file which should be in the same location
. $mypath\settings.ps1


If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  # Relaunch as an elevated process:
  Start-Process powershell.exe "-File",('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}
netsh advfirewall firewall add rule name=$rule_name dir=in program=$steam_path action=block
netsh advfirewall firewall add rule name=$rule_name dir=out program=$steam_path action=block
netsh advfirewall firewall set rule name=$rule_name new enable=yes