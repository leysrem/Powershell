param([string]$nom,$prenom) 

 
$User = "P:\Powershell\Utilisateur"

$Date = Get-Date -Format "dd-MM-yyyy"

$Succeslog  = "P:\Powershell\LOGS\$Date-Succeslog.txt"

$Errorlog  = "P:\Powershell\LOGS\$Date-Errorlog.txt"

$lastname = $nom

$name = $prenom
  
    $ConcaName = $lastname.substring(0,4)+$name.substring(0,3)
       
if (![System.IO.Directory]::Exists("$User\$lastname")) {  

New-Item -Path $User -Name "$lastname" -ItemType Directory
Add-Content  "$Succeslog" "Utilisateur créé $name à été créé"

} ElseIf ([System.IO.Directory]::Exists("$User\$lastname")) {

 $ConcaName = $lastnname.substring(0,4)+$name.substring(0,3)

 New-Item -Path $User -Name "$ConcaName" -ItemType Directory
 Add-Content  "$Succeslog" "Utilisateur $longName à été créé"   
} 
If ([System.IO.Directory]::Exists("$User\$ConcaName")) {
 Add-Content  "$Errorlog" "Utilisateur $ConcaName déjà existant"  
}



