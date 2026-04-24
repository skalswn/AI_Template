param(
    [Parameter(Mandatory=$true)][string]$ProjectName,
    [Parameter(Mandatory=$true)][string]$GroupId,
    [Parameter(Mandatory=$true)][string]$BasePackage
)

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot

$pom = Join-Path $root "pom.xml"
(Get-Content $pom -Raw) `
    -replace "<groupId>com.company</groupId>", "<groupId>$GroupId</groupId>" `
    -replace "<artifactId>Template</artifactId>", "<artifactId>$ProjectName</artifactId>" `
    -replace "<name>Template</name>", "<name>$ProjectName</name>" |
    Set-Content -Path $pom -Encoding UTF8

Get-ChildItem $root -Recurse -Include *.xml,*.md,*.properties | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    $content = $content -replace "com.company", $BasePackage
    $content = $content -replace "Template", $ProjectName
    Set-Content -Path $_.FullName -Value $content -Encoding UTF8
}

$packagePath = Join-Path (Join-Path $root "src\main\java") ($BasePackage.Replace(".", "\"))
New-Item -ItemType Directory -Force -Path $packagePath | Out-Null
Set-Content -Path (Join-Path $packagePath ".gitkeep") -Value "" -Encoding UTF8

Write-Host "Initialized $ProjectName. Review globals.properties before running Maven."
