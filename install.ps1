$url = "https://raw.githubusercontent.com/AETRN/winget-fresh/main/applist.json
$apps = Invoke-RestMethod -Uri $url

foreach ($app in $apps.Sources) {
    winget install --id $app.Id --silent --accept-package-agreements --accept-source-agreements
}
