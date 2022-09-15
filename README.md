# Setup

## Set execution policy to unrestricted so that you can execute powershell scripts
Open PowerShell as admin (right clic, execute as admin), and run the following commands
`Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted`
`Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted`
`Set-ExecutionPolicy -Scope LocalMachine -ExecutionPolicy Unrestricted`

## Set the path of the powershell script in the bat files

TODO


Now you can execute the bat files 

## Alternatively
You can run  the powershell script directly (right clic `run with powershell`)
However, some program cannot run powershell scripts.
For example, razer synapse 2, for my razer blackwidow ultimate 2014, can run powershell script on the macro keys using the the `launch program` option
Hence the bat wrappers, which can be run from the macro keys.

## TODO
Put all settings in one place (firewall rule name, steam path, powershell script path...)