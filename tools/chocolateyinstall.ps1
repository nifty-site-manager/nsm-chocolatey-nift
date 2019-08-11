$ErrorActionPreference = 'Stop'; # stop on all errors

$toolsDir   = "tools"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe' #only one of these: exe, msi, msu
  file          = "$toolsDir\nsm.exe"

  softwareName  = 'nsm'

  # MSI
  silentArgs    = ""
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs 