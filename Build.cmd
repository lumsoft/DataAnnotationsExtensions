set config=%1
set buildnum=%2
if "%config%" == "" (
   set config=release
)
if "%buildnum%" == "" (
    set buildnum=1.1.0.0
)

%WINDIR%\Microsoft.NET\Framework\v4.0.30319\msbuild Build\Build.proj /p:Configuration="%config%" /p:Platform="Any CPU" /p:BUILD_NUMBER="%buildnum%"
CreateNugetPackage.cmd