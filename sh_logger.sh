#!/bin/bash

if [ $# -ne 2 ]; then
    echo "usage: sh_logger [logger_tag] [execute_string]"
    exit 1
fi

logger_tag=$1
execute_string=$2

exec > >(logger -p notice -t $logger_tag)
exec 2> >(logger -p error -t $logger_tag)
exec -c $execute_string

exit 0
