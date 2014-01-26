# -*- coding: utf-8 -*-
# Longest Collatz sequence Problem 14

# The following iterative sequence is defined for the set of positive
# integers:

# n → n/2 (n is even) n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following
# sequence: 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

# It can be seen that this sequence (starting at 13 and finishing at
# 1) contains 10 terms. Although it has not been proved yet (Collatz
# Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest
# chain?

# NOTE: Once the chain starts the terms are allowed to go above one
# million.

def collatz(n)
  if n.even?
    n / 2
  else
    n * 3 + 1
  end
end

def collatz_sequence_length(n)
  "return array with [length of collatz-sequence, n] for n"
  init = n
  count = 1
  loop do
    init = collatz init
    count +=1
    if init == 1
      return [count,n]
    end
  end
end

def euler14
  max = [0,0]
  (2..1000000).each do |i|
    if collatz_sequence_length(i).first > max.first
      max = collatz_sequence_length(i)
    end
  end
  max
end
  
