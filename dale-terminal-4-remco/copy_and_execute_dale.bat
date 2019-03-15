echo "COPYING DALE TERMINAL 4 REMCO TO USER HARD DRIVE"
robocopy /R:1 /E /W:1 ../dale-terminal-4-remco %UserProfile%/dale-terminal-4-remco/
echo "EXECUTING THE SCRIPT"
powershell -noprofile -command "&{ start-process powershell -ArgumentList '-noprofile -file %UserProfile%/dale-terminal-4-remco/dale-terminal.ps1' -verb RunAs}"

echo "If the script woul'nt run , open a powershell terminal as administrator and execute the following command : "
echo "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned"
echo "Then rerun this batch file"