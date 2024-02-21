#!/bin/bash
set -e

MIGRATIONS_DIR="migrations/"


function run_migrations() {
    local direction=$1 
    local target=$2

    case $direction in
        up)
            migrate -path=$MIGRATIONS_DIR -database=$POSTGRES_DATASOURCE up $target
        ;;
        down)
            migrate -path=$MIGRATIONS_DIR -database=$POSTGRES_DATASOURCE down $target 
        ;;
        *)
            echo "invalid migration direction"
    esac
}

command=$1

case $command in
    migrate)
        direction=$2
        target=$3

        run_migrations $direction $target
    ;;
    *)
        echo "invalid instruction"
    ;;
esac