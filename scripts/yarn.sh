#!/bin/bash

start() {
    source "/etc/hadoop/hadoop-env.sh"
    start-yarn.sh
}

stop() {
    source "/etc/hadoop/hadoop-env.sh"
    stop-yarn.sh
}

case $1 in
    start|stop) "$1" ;;
esac

exit 0
