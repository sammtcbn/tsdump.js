# tsdump

A simple cross-platform service to dump time stamp written by node.js.

This is a very simple template project to demonstrate how to generate a Linux/Windows service. This project also aims to lanunch node.js application running as a service.

# Windows

Install service on Windows
```console
node-v12-executable-download.bat
nssm-download.bat
win_install_service.bat
```

Uninstall service on Windows
```console
win_uninstall_service.bat
```

Service Control by nssm utility
```console
nssm start tsdump
nssm stop tsdump
nssm restart tsdump
nssm status tsdump
```

Show current time stamp
```console
type tsdump.log
1581323945
```

# Linux

Install on Linux
```bash
$ sudo ./linux_install.bash
```

Uninstall from Linux
```bash
$ sudo ./linux_uninstall.bash
```

Service Control by systemctl
```bash
$ sudo systemctl start tsdump
$ sudo systemctl stop tsdump
$ sudo systemctl restart tsdump
$ sudo systemctl status  tsdump
```

Show current time stamp
```bash
$ cat /tmp/tsdump.log
1581323945
```
