@echo off
set currdir=%~dp0
IF "%currdir:~-1%"=="\" SET currdir=%currdir:~0,-1%
cd "%currdir%"

if not exist node.exe (
    curl --output node.exe https://nodejs.org/dist/latest-v12.x/win-x64/node.exe
)

nssm install tsdump "node"
nssm set tsdump AppDirectory "%currdir%"
nssm set tsdump AppParameters index.js
nssm start tsdump