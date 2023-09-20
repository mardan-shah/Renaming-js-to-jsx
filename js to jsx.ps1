Get-ChildItem -Path "C:\Path\to\your\directory" -File -Filter *.js -Recurse | ForEach-Object {
    $newName = $_.FullName -replace '\.js$', '.jsx'
    Rename-Item -Path $_.FullName -NewName $newName -Force
}
