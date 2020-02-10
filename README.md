tsdump - a simple linux service to dump time stamp

This is a simple project written by node.js. I create this repository in order to generate a basic linux service template for launching node.js application.

Install
```bash
$ sudo ./install.bash
```

Uninstall
```bash
$ sudo ./uninstall.bash
```

Service Control by systemctl
```bash
$ sudo systemctl start tsdump
$ sudo systemctl stop tsdump
$ sudo systemctl restart tsdump
```

Show current time stamp
```bash
$ cat /tmp/tsdump.log
1581323945
```
