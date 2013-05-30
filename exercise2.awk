#!/usr/bin/awk -f
#
# Author: nishalr
# Requires: Standard AWK
# Usage: ./exercise2.awk 666 23 65 10000 1 76234 53 8172 97 00 01 1 9
#
# Description:
#
# Write a function that takes a list of integers (as arguments) and returns a
# response with the average (mean), total/sum of integers, the maximum and
# minimum values. Print the average to two decimal places. To make this a
# little more straightforward assume that input values are always integers.
#

# maxminavg() -- returns "avg", "sum", "max", "min" values from
#                a string of integers separated by whitespace
#
function maxminavg(str,     fmt, count, i, arr, sum, min, max)
{
    fmt = "%.2f %10d %10d %10d"
    count = split(str, arr)
    min = ""

    for (i in arr)
    {
        sum += arr[i]

        if (arr[i] > max)
            max = arr[i]

        if (arr[i] < min || min == "" )
            min = arr[i]
    }

    return sprintf(fmt, sum / count, sum, max, min)
}

BEGIN \
{
    for (i = 1; i <= ARGC; i++)
        str = (str " " ARGV[i])

    print maxminavg(str)
}
