#!/bin/sh

set -e

scriptpath=$(dirname $(readlink -f "$0"))
name="serve-laravel"
cmd="php artisan serve --host 0.0.0.0"
log="$HOME/.logs/$name.log"

set +e
pid=$(ps -C "$cmd" -o pid --no-headers | sed -e 's/^ *//' -e 's/ *$//')
set -e

case "$1" in

  start)
    if [ ! -z "$pid" ]; then
      echo "$name" is running...
      exit 0
    fi
    nohup $cmd >> "$log" 2>&1 &
    echo Starting "$name"...
    ;;

  stop)
    if [ -z "$pid" ]; then
      echo "$name" is stopped...
      exit 0
    fi
    kill -s TERM "$pid"
    echo Stopping "$name"
    ;;

  restart)
    if [ -z "$pid" ]; then
      echo "$name" is stopped...
      exit 0
    fi
    kill -s TERM "$pid"
    nohup $cmd >> "$log" 2>&1 &
    echo Restarting "$name"...
    ;;

  status)
    if [ -z "$pid" ]; then
      echo "$name" is stopped...
    else
      state=$(ps -o state --no-headers -p "$pid")
      echo "$name" is running ["$state"]...
    fi
    ;;

  *)
    exit 1
esac

exit 0

