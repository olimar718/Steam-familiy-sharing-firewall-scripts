# Block Steam
$steam_path="C:\Program Files (x86)\Steam\steam.exe"
$rule_name="_01 Block steam(Program)"


If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  # Relaunch as an elevated process:
  Start-Process powershell.exe "-File",('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}
netsh advfirewall firewall add rule name=$rule_name dir=in program=$steam_path action=block
netsh advfirewall firewall add rule name=$rule_name dir=out program=$steam_path action=block
netsh advfirewall firewall set rule name=$rule_name new enable=yes