#!/usr/local/bin/python -S

from sys import argv

""" Write a function that takes a list of integers (as arguments) and
returns a response with the average (mean), total/sum of integers, the
maximum and minimum values. Print the average to two decimal places. To
make this a little more straightforward assume that input values are always
integers. """

def maxminavg(nums):
    sumall = sum(nums)
    avg = round(float(sumall) / len(nums), 2)

    return avg, sumall, max(nums), min(nums)

def main():
    print maxminavg(map(int, argv[1:]))

if __name__ == '__main__':
    main()
