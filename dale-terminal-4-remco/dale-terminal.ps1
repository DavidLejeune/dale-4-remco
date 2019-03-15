# Description
# -----------
function show_description(){
    show_header;
    #feeding the narcistic beast
    Write-Host "# Description" -ForegroundColor white
    Write-Host "# -----------" -ForegroundColor white
    Write-Host "#  <WRITE TITLE HERE> " -ForegroundColor yellow
    Write-Host ""
    Write-Host "# Author : David Lejeune" -ForegroundColor magenta
    Write-Host "# Created : <DATE>" -ForegroundColor magenta
    Write-Host ""
    standard_options;

}
#------------------------------------------------------------------------------
#Inits
#------------------------------------------------------------------------------
# Set Style
$pshost = Get-Host
$psWindow = $pshost.UI.RawUI
$newSize =$psWindow.BufferSize

$newSize.Height = 4000
$newSize.Width = 120

$psWindow.BufferSize = $newSize

$newSize = $psWindow.WindowSize
$newSize.Height = 40
$newSize.Width = 120

$psWindow.WindowSize= $newSize

$Host.UI.RawUI.BackgroundColor = ($bckgrnd = 'black')
$Host.UI.RawUI.ForegroundColor = 'White'
$Host.PrivateData.ErrorForegroundColor = 'Red'
$Host.PrivateData.ErrorBackgroundColor = $bckgrnd
$Host.PrivateData.WarningForegroundColor = 'Magenta'
$Host.PrivateData.WarningBackgroundColor = $bckgrnd
$Host.PrivateData.DebugForegroundColor = 'Yellow'
$Host.PrivateData.DebugBackgroundColor = $bckgrnd
$Host.PrivateData.VerboseForegroundColor = 'Green'
$Host.PrivateData.VerboseBackgroundColor = $bckgrnd
$Host.PrivateData.ProgressForegroundColor = 'Cyan'
$Host.PrivateData.ProgressBackgroundColor = $bckgrnd

#------------------------------------------------------------------------------
# DALE TERMINAL Functions
#------------------------------------------------------------------------------

    function show_header(){

        Clear-Host
        $dt = Get-Date
        $user_name=$env:UserName
        $user_domain=$env:UserDomain
        $computer_name=$env:ComputerName
        $os = Get-WmiObject -Class Win32_OperatingSystem | ForEach-Object -MemberName Caption;
        $cool_info= "[DOMAIN:$user_domain]   [COMPUTER NAME:$computer_name]   [USER:$user_name]";
        write_reverse_banner_darkblue "$dt";
        #write_reverse_banner_red "WinServer CLI";
        write_reverse_banner_red "$os";
        write_banner_darkblue "..................................................................................................................."
        write_banner_darkblue "......%%%%%....%%%%...%%......%%%%%%..........%%%%%%..%%%%%%..%%%%%...%%...%%..%%%%%%..%%..%%...%%%%...%%.........."
        write_banner_darkblue "......%%..%%..%%..%%..%%......%%................%%....%%......%%..%%..%%%.%%%....%%....%%%.%%..%%..%%..%%.........."
        write_banner_darkblue "......%%..%%..%%%%%%..%%......%%%%..............%%....%%%%....%%%%%...%%.%.%%....%%....%%.%%%..%%%%%%..%%.........."
        write_banner_darkblue "......%%..%%..%%..%%..%%......%%................%%....%%......%%..%%..%%...%%....%%....%%..%%..%%..%%..%%.........."
        write_banner_darkblue "......%%%%%...%%..%%..%%%%%%..%%%%%%............%%....%%%%%%..%%..%%..%%...%%..%%%%%%..%%..%%..%%..%%..%%%%%%......"
        write_banner_darkblue "..................................................................................................................."

        #write_banner_darkblue "...%%%%%....%%%%...%%......%%%%%%.........%%...%%..%%%%%%..%%..%%...%%%%...%%%%%%..%%%%%...%%..%%..%%%%%%..%%%%%..."
        #write_banner_darkblue "...%%..%%..%%..%%..%%......%%.............%%...%%....%%....%%%.%%..%%......%%......%%..%%..%%..%%..%%......%%..%%.."
        #write_banner_darkblue "...%%..%%..%%%%%%..%%......%%%%...........%%.%.%%....%%....%%.%%%...%%%%...%%%%....%%%%%...%%..%%..%%%%....%%%%%..."
        #write_banner_darkblue "...%%..%%..%%..%%..%%......%%.............%%%%%%%....%%....%%..%%......%%..%%......%%..%%...%%%%...%%......%%..%%.."
        #write_banner_darkblue "...%%%%%...%%..%%..%%%%%%..%%%%%%..........%%.%%...%%%%%%..%%..%%...%%%%...%%%%%%..%%..%%....%%....%%%%%%..%%..%%.."
        write_reverse_banner_red $cool_info;
        write_banner_darkblue $Menu;
        Write-Host ''
    }


    # START OUTPUT FUNCTIONS ================================================================================
    function write_banner_darkblue($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host ' ' $entry '' $filler  -BackgroundColor darkblue -ForegroundColor white;
    }
    
    function write_reverse_banner_darkblue($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host '' $filler '' $entry '' -BackgroundColor Darkblue -ForegroundColor white;
    }
    function write_banner_darkgray($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host ' ' $entry '' $filler  -BackgroundColor darkgray -ForegroundColor white;
    }
    
    function write_reverse_banner_darkgray($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host '' $filler '' $entry '' -BackgroundColor DarkGray -ForegroundColor white;
    }
    function write_banner_yellow($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host ' ' $entry '' $filler  -BackgroundColor yellow -ForegroundColor Black;
    }
    
    function write_reverse_banner_yellow($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host '' $filler '' $entry '' -BackgroundColor yellow -ForegroundColor Black;
    }
    function write_banner_white($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host ' ' $entry '' $filler  -BackgroundColor white -ForegroundColor Black;
    }
    
    function write_reverse_banner_white($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host '' $filler '' $entry '' -BackgroundColor white -ForegroundColor Black;
    }
    
    function write_banner_blue($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host ' ' $entry '' $filler  -BackgroundColor Blue -ForegroundColor White;
    }
    
    function write_reverse_banner_blue($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host '' $filler '' $entry '' -BackgroundColor blue -ForegroundColor White;
    }
    
    function write_banner_red($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host ' ' $entry '' $filler  -BackgroundColor red -ForegroundColor White;
    }
    
    function write_reverse_banner_red($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host '' $filler '' $entry '' -BackgroundColor red -ForegroundColor White;
    }
    
    function write_banner_darkgreen($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host ' ' $entry '' $filler  -BackgroundColor DarkGreen -ForegroundColor White;
    }
    
    function write_reverse_banner_darkgreen($entry){
        $filler="";
        For ($i=2; $i -le 116 - $entry.length; $i++) {
            $filler=' ' + $filler;
            }
        Write-Host '' $filler '' $entry '' -BackgroundColor DarkGreen -ForegroundColor White;
    }
    

    function write_banner_info($msg){
        write_banner_blue $msg;
    }
    
    function write_banner_warning($msg){
        write_banner_red $msg;
    }
    
    function write_banner_action($msg){
        write_banner_darkgreen $msg;
    }
    
    function write_banner_regular($msg){
        write_banner_white $msg;
    
    }



    function ProcessingAnimation($scriptBlock) {
        $cursorTop = [Console]::CursorTop
        
        try {
            [Console]::CursorVisible = $false
            
            $counter = 0
            $frames = "  $animation_msg |", "  $animation_msg /", "  $animation_msg -", "  $animation_msg \" 
            $jobName = Start-Job -ScriptBlock $scriptBlock
        
            while($jobName.JobStateInfo.State -eq "Running") {
                $frame = $frames[$counter % $frames.Length]
                
                
                Write-Host "$frame" -NoNewLine
                [Console]::SetCursorPosition(0, $cursorTop)
                
                $counter += 1
                Start-Sleep -Milliseconds 125
            }
            
            # Only needed if you use a multiline frames
            Write-Host ($frames[0] -replace '[^\s+]', ' ')
        }
        finally {
            [Console]::SetCursorPosition(0, $cursorTop)
            [Console]::CursorVisible = $true
        }
    }

    function write_warning($msg)
    {
        Write-Host "$($msg)" -BackgroundColor Red -ForegroundColor White;
    }
     
    function write_info($msg)
    {
        Write-Host "$($msg)" -ForegroundColor Blue;
    }
    
    function write_regular($msg)
    {
        Write-Host "$($msg)" -ForegroundColor White;
    }
    
    function write_action($msg)
    {
        Write-Host "$($msg)" -ForegroundColor DarkGreen;
    }

# END OUTPUT FUNCTIONS ================================================================================



# Functions 4 Remco

function Uninstall-Panda(){

    $search_value="Putty";
    write_banner_info "Searching for installed products that contain : $search_value"
        $products = Get-WmiObject -Class Win32_Product;   
    $iCount=0; 
    $iCount2=0;  
    $iCount3=0;     
    foreach($product in $products)
    {
        if ( $product.Name -like "*$search_value*") {
            $iCount = $iCount + 1;
        }
    }
   write_banner_darkgreen "Found $iCount installed $search_value product(s)";
    foreach($product in $products)
    {
        if ( $product.Name -like "*$search_value*") 
        {
            $result = $product.Name;
            $iCount2=$iCount2+1;
            write_banner_darkgreen $result;
            write_banner_info "Uninstalling $search_value product [$iCount2/$iCount]";
            #(get-wmiobject -class Win32_Product -filter "Name=$result").Uninstall();
            #wmic product where name="$result" call uninstall
            #$app = Get-WmiObject -Class Win32_Product -Filter "Name = '$result'";
            #$app.uninstall;
            $delete_result = (Get-WmiObject -Class Win32_Product -Filter "Name = '$result'").Uninstall();
            if ($delete_result.ReturnValue -eq 0) {
                write_regular "Product $result uninstall succeeded"
                $iCount3=$iCount3+1;
            }
            else {
                write_warning "Product $result uninstall failed"
            }
        }
    }
    write-host"";
    write-host ">>>>>> RESULT";
    if ($iCount3 -eq $iCount){
        write_banner_regular "$iCount3 of $iCount $search_value product(s) deleted"
    }
    else{
        write_banner_warning "$iCount3 of iCount $search_value product(s) deleted"
        write_banner_warning "YOU WILL NEED TO UNINSTALL THIS MANUALLY"
    }
}



function Start-Install-SEP(){

    $architecture=(Get-WmiObject Win32_OperatingSystem ).OSArchitecture;
    if ( $architecture -like '*64*') {
        Write-Host "this is a 64 bit operating system";
        $architecture;
    }
    else {
        Write-Host "this is NOT a 64 bit operating system";
        $architecture;
    }
}




#------------------------------------------------------------------------------
#Script Variables
#------------------------------------------------------------------------------

$CurrentPath = (Get-Item -Path ".\").FullName;
$ParentPath = $CurrentPath.Replace("\dale-terminal-4-remco", "");

$animation_msg="";

# Standard menu
$Menu="Script for Remco to uninstall Panda and install Symantec Endpoint Protection"










#------------------------------------------------------------------------------
# Script 
#------------------------------------------------------------------------------

show_header;

$animation_msg="LOADING";
ProcessingAnimation { Start-Sleep 2 }


show_header;
Uninstall-Panda
pause

show_header;
Start-Install-SEP



pause