clear

$PathCSV = "P:\Powershell\BD\classes.csv" # chemin du fichier CSV classe


If (![System.IO.File]::Exists($PathCSV))     # On vérifie si le fichier CSV existe sinon erreur
{
    Write-Host "Erreur : Le fichier de donnees n'existe pas : " $pathcsv  
}
Else
{ 
    Write-Host "Le fichier de donnees existe deja : " $pathcsv 
}


$CSVClass = Import-Csv -path $PathCSV -Delimiter ";"


Foreach( $ele IN $CSVClass ) 
{
    $class = $ele.Classe
    Write-Host  "Classe : " $class
    P:\Powershell\sous-programmes\CreerClasse.ps1 $ele.Classe
}

