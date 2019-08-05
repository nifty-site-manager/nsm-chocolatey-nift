$ErrorActionPreference = 'Stop'; # stop on all errors

$toolsDir   = "tools"
$url        = 'https://github.com/nifty-site-manager/nsm-chocolatey/raw/master/nsm.exe' # download url, HTTPS preferred

$packageArgs = @{
  packageName   = 'nsm'
  unzipLocation = $toolsDir
  fileType      = 'exe' #only one of these: exe, msi, msu
  url           = $url

  softwareName  = 'nsm'

  # You can also use checksum.exe (choco install checksum) and use it 
  # e.g. checksum -t sha256 -f path\to\file
  checksum      = 'BF5CD7DB397024779503B6F252E24388AB2FE10C88EE82746987619934D55F8A'
  checksumType  = 'sha256' 

  # MSI
  silentArgs    = ""
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs 