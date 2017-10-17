# myhelpers

Simple helper scripts for MySQL. Requires .my.cnf or .mylogin with login info in user directory.

## my-makeslave

Usage: my-makeslave sourceip [localip]

Will delete the local mysql directory and stream an xtrabackup from the source.

## my-slavestatus

Usage: my-slavestatus [seconds]

Displays slave status. If seconds are provided it will use watch to refresh the status.
