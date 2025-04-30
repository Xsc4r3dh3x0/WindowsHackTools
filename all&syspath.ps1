scoop install HOW2USE 
scoop install arp-scan 
scoop install dalfox 
scoop install ffuf 
scoop install getsubdomain
scoop install gobuster 
scoop install hexeditor
scoop install httpx 
scoop install ipcalc 
scoop install katana 
scoop install masscan 
scoop install ncat 
scoop install nuclei 
scoop install nxc 
scoop install otherland
scoop install procexp
scoop install procmon
scoop install subfinder 
scoop install termclean 
scoop install waybackurls
scoop install wmiexplorer


$scoopPath = "$HOME\scoop\apps"
$appFolders = Get-ChildItem -Directory $scoopPath
foreach ($folder in $appFolders) {
    $currentPath = Join-Path $folder.FullName 'current'
    [Environment]::SetEnvironmentVariable("Path", $env:Path + ";" + $currentPath, [EnvironmentVariableTarget]::User)
}
Write-Host "Paths added to PATH successfully!"
