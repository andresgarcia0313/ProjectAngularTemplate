# Código que listar archivos de la ruta relativa actual
Get-ChildItem -Path .\* -Include *.* -Recurse | ForEach-Object {
    Write-Host $_.FullName
}


