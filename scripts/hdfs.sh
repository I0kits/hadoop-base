#!/bin/bash

start() {
    source "/etc/hadoop/hadoop-env.sh"
    start-dfs.sh
}

stop() {
    source "/etc/hadoop/hadoop-env.sh"
    stop-dfs.sh
}

case $1 in
    start|stop) "$1" ;;
esac

exit 0
