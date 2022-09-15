Rem %mypath:~0,-1% refers to the path of the batch file that is being executed.
Rem the powershell script should therefore be in the same directory
SET mypath=%~dp0 
powershell -File "%mypath:~0,-1%\unblock_steam.ps1"
set /p "id=Press enter to quit"
