SET mypath=%~dp0
echo %mypath:~0,-1%
powershell -noprofile -command "&{ start-process powershell -ArgumentList '-noprofile -file %mypath:~0,-1%/install_sep.ps1' -verb RunAs}"

