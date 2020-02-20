@set currdir=%~dp0
nssm install tsdump "node"
nssm set tsdump AppDirectory "%currdir%
nssm set tsdump AppParameters index.js
nssm start tsdump