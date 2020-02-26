
param([string]$class) 

$pathCSV = "P:\Powershell\BD\"+ $class +".csv" # chemin des fichier CSV classes sio1.csv,sio2.csv,...

$pathLog = "P:\Powershell\BD\CreerUtilisateur.ps1"


if (![System.IO.File]::Exists($PathCSV)) 
{
    Write-Host "Erreur : le fichier de donnees n'existe pas : " $pathCSV 
    exit   
}
Else
{ 
    Write-Host "le fichier de donnees existe : " $pathCSV 
}

$CSVClasses = Import-Csv -path $pathCSV -Delimiter ";"

Foreach(  $ele IN $CSVClasses ) 
{
   Write-Host $ele.nom
   P:\Powershell\sous-programmes\CreerUtilisateur.ps1 $ele.nom $ele.prenom 
}


