#!/bin/bash

## Get Difference between dates
get_date_difference() {
    d1=$(date --date "$1" +%s)
    d2=$(date --date "$2" +%s)
    echo $(( (d1 - d2) / 86400 )) days
}

## Execute
current_time = $(date +%s)
get_date_difference('@$current_time', '')
