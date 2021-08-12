@echo off
set currdir=%~dp0
cd "%currdir%"

set node_binary=node.exe
set node_dl_path=https://nodejs.org/dist/latest-v12.x/win-x64/%node_binary%

curl --fail --output %node_binary% %node_dl_path%
if %errorlevel% neq 0 (
    echo Fail to download %node_binary%
    pause
    goto End
)

if not exist %node_binary% (
    echo %node_binary% not found
    pause
    goto End	
)

:END
echo bye
timeout /t 5
