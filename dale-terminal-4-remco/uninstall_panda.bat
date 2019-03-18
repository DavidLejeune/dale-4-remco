SET mypath=%~dp0
echo %mypath:~0,-1%
powershell -noprofile -command "&{ start-process powershell -ArgumentList '-noprofile -file %mypath:~0,-1%/uninstall_panda.ps1' -verb RunAs}"

