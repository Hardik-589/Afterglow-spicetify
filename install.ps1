$ErrorActionPreference = 'Stop'
$themeName = 'Afterglow'
$source = Split-Path -Parent $MyInvocation.MyCommand.Path
$themesRoot = Join-Path $env:APPDATA 'spicetify\Themes'
$destination = Join-Path $themesRoot $themeName

New-Item -ItemType Directory -Path $destination -Force | Out-Null
Copy-Item -Path (Join-Path $source 'color.ini'), (Join-Path $source 'user.css'), (Join-Path $source 'manifest.json'), (Join-Path $source 'README.md'), (Join-Path $source 'preview.png') -Destination $destination -Force

if (Get-Command spicetify -ErrorAction SilentlyContinue) {
    spicetify config current_theme $themeName color_scheme $themeName
    spicetify apply
    Write-Host "Afterglow installed and applied. Edit files in: $destination"
} else {
    Write-Host "Theme files copied to: $destination"
    Write-Host "Spicetify was not found on PATH. Open a PowerShell where it is available, then run:"
    Write-Host "spicetify config current_theme Afterglow color_scheme Afterglow"
    Write-Host "spicetify apply"
}
