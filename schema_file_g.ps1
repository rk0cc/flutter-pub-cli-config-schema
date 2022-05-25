$SchemaFilesName = [System.Collections.ArrayList]@()

Get-ChildItem -Path docs/ | ForEach-Object -Process {
    if ($_.Name -ne "dict.json") {
        $SchemaFilesName += , $_.Name
    }
}

$SchemaFilesName | ConvertTo-Json -Compress | Out-File -FilePath docs/dict.json
