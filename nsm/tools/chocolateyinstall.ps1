$ErrorActionPreference = 'Stop'; # stop on all errors

$toolsDir   = "nsm\tools"
$url        = 'https://github.com/nifty-site-manager/nsm-chocolatey/raw/master/nsm.exe' # download url, HTTPS preferred

$packageArgs = @{
  packageName   = 'nsm'
  unzipLocation = $toolsDir
  fileType      = 'exe' #only one of these: exe, msi, msu
  url           = $url
  url64bit      = $url64
  file         = nsm.exe

  softwareName  = 'nsm'

  # You can also use checksum.exe (choco install checksum) and use it 
  # e.g. checksum -t sha256 -f path\to\file
  checksum      = '75C56B1E6FF1D5955729CC6E50553A65B0E11326B07EB99F1E8335EAD2C7531D'
  checksumType  = 'sha256' 

  # MSI
  silentArgs    = "/SILENT"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs 