# myhelpers

Simple helper scripts for MySQL. Requires .my.cnf or .mylogin with login info in user directory.

## my-binlogger

This script will stream binlogs for the purposes of backup.

Add to root crontab on a backup server: 
```@reboot	nohup /usr/local/bin/my-binlogger 2>&1 > /var/log/my-binlogger.log &```

The conf file from conf/ should be placed in /etc/mysql/ (or the path in my-binlogger should be changed).

## my-makeslave

Usage: my-makeslave sourceip [localip]

Run this on the target host to sync with the master. Will delete the local mysql directory and stream an xtrabackup from the source.

The conf file from conf/ should be placed in /etc/mysql/ (or the path in my-makeslave should be changed).

## my-slavestatus

Usage: my-slavestatus [seconds]

Displays slave status. If seconds are provided it will use watch to refresh the status.

## my-vars

Usage: my-vars some-string

Greps the mysql variables for the provided string.
