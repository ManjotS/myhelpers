#!/bin/bash

CMD="mysql -e 'show slave status\G' | grep --color=never -i 'running\|gtid\|seconds\|Master_Host\|state\|\*\*'"

if [ -n "$1" ]; then
	watch -n $1 "$CMD"
else
	eval $CMD
fi
