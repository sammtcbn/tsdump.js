@set currdir=%~dp0
IF "%currdir:~-1%"=="\" SET currdir=%currdir:~0,-1%
nssm install tsdump "node"
nssm set tsdump AppDirectory "%currdir%"
nssm set tsdump AppParameters index.js
nssm start tsdump