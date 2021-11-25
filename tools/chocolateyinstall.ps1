$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    PackageName    = 'ghostwriter.portable'
    FileType       = '7z'
    SoftwareName   = 'ghostwriter portable *'
    Url64	   = "https://github.com/michelolvera/vs-ghostwriter/releases/download/win-2.0.2/ghostwriter_x64_portable.7z"
    UnzipLocation  = $toolsDir
}
Install-ChocolateyZipPackage @packageArgs

Remove-Item $toolsDir\*.7z -ea 0