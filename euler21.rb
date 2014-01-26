# -*- coding: utf-8 -*-
# Amicable numbers Problem 21

# Let d(n) be defined as the sum of proper divisors of n (numbers less
# than n which divide evenly into n).  If d(a) = b and d(b) = a, where
# a ≠ b, then a and b are an amicable pair and each of a and b are
# called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20,
# 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of
# 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

def sum_divisors(n)
  (1..(n/2)).select {|i| n % i == 0}.inject(0){|i,j| i+j}
end

def amicable?(n)
  n != sum_divisors(n) && n == sum_divisors(sum_divisors(n))
end

def euler21
  (1..9999).select {|i| amicable?(i) }.inject(:+)
end


