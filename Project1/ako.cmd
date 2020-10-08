@ECHO OFF

IF [%1]==[clean] GOTO CLEAN
IF [%1]==[build] GOTO BUILD
GOTO END

:BUILD
msbuild helloworld.csproj -t:Build
REM msbuild helloworld.csproj -t:Build -verbosity:detailed
REM msbuild helloworld.csproj -t:Build -v:d

:CLEAN
msbuild helloworld.csproj -t:clean

:END