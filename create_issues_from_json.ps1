$jsonContent = Get-Content -Path "issues.json" -Raw -Encoding UTF8 | ConvertFrom-Json

foreach ($issue in $jsonContent) {
    Write-Host "Creating issue: $($issue.Title)"
    # Using specific handling for utf8 if needed, but gh cli usually handles strings well.
    # We pass the body via echo to stdin to avoid shell escaping issues with newlines
    
    $body = $issue.Body
    $title = $issue.Title
    
    # Write content to temp file to safeguard encoding
    $tempFile = [System.IO.Path]::GetTempFileName()
    $body | Set-Content -Path $tempFile -Encoding UTF8

    gh issue create --title "$title" --body-file "$tempFile"
    
    Remove-Item $tempFile
    Start-Sleep -Seconds 1
}
