#!/bin/ksh
#
# Author: nishalr
#
# Description:
#
# Write a script that invokes iostat and repeats forever with a four second
# interval. Every time iostat prints something to screen that line of output
# should be prepended with the current time. Please use the time format HH:MM:SS,
# as no other time and date information is required.
#
loop_iostat()
{
    local stamp= line=

    iostat -w ${1} | while read line ; do
        stamp=$(date "+%H:%M:%S")
        printf "%s %s\n" "${stamp}" "${line}"
    done
}

main()
{
    loop_iostat ${*}
}

main 4
