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
  checksum      = '01580AB337AEFEE80EAA970B479A0DD336C99CA88E62BF41B75794B446C74D61'
  checksumType  = 'sha256' 

  # MSI
  silentArgs    = ""
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs 