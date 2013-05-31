#!/usr/local/bin/python -S

from sys import argv

def maxminavg(nums):
    count = len(nums)
    sumall = sum(set(nums))
    avg = round(float(sumall) / count, 2)

    return avg, sumall, max(nums), min(nums)

def main():
    nums = [ int(argv[x]) for x in range(1, len(argv)) ]
    print maxminavg(nums)

if __name__ == '__main__':
    main()
