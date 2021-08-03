@echo off
set currdir=%~dp0
IF "%currdir:~-1%"=="\" SET currdir=%currdir:~0,-1%
cd "%currdir%"

nssm stop tsdump
nssm remove tsdump confirm