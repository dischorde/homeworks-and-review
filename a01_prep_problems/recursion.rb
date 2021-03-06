require "byebug"

# Implement a method that finds the sum of the first n
# fibonacci numbers recursively. Assume n > 0
def fibs_sum(n)
end

def fibonacci(n)
end

#returns all subsets of an array
def subsets(array)
end


# return the sum of the first n even numbers recursively. Assume n > 0
def first_even_numbers_sum(n)
end

def even_nums(n)
end

# return b^n recursively. Your solution should accept negative values
# for n
def exponent(b, n)
end


# make better change problem from class
def make_better_change(value, coins)
  better_change_helper(value, coins, {})
end

def better_change_helper(value, coins, cache)
  # return it if it's already in the cache
  return cache[value] if cache.key?(value)
  best_coins = nil

  coins.each do |coin|
    next if coin > value # try next if this coin is too big

    # if this coin is the same value, return and cache it
    if coin == value
      cache[value] = [coin]
      return [coin]
    end

    # otherwise, get best other coins to use if you use this one
    prev_coins = better_change_helper(value - coin, coins, cache)
    next if prev_coins.nil?

    cur_coins = prev_coins + [coin]
    best_coins = cur_coins unless best_coins && cur_coins.length > best_coins.length
  end

  cache[value] = best_coins if best_coins
  best_coins
end

#deep dup question from class
def deep_dup(arr)
end

# Write a recursive method that takes in a string to search and a key string.
# Return true if the string contains all of the characters in the key
# in the same order that they appear in the key.
#
# string_include_key?("cadbpc", "abc") => true
# string_include_key("cba", "abc") => false
def string_include_key?(string, key)
end


# Write a recursive function that returns the prime factorization of
# a given number. Assume num > 1
#

def prime_factorization(num)
end


# Write a method, `digital_root(num)`. It should Sum the digits of a positive
# integer. If it is greater than 10, sum the digits of the resulting number.
# Keep repeating until there is only one digit in the result, called the
# "digital root". **Do not use string conversion within your method.**
#
# You may wish to use a helper function, `digital_root_step(num)` which performs
# one step of the process.

def digital_root(num)
end

def digital_root_step(num)
end

# Write a recursive method that takes in a base 10 number n and
# converts it to a base b number. Return the new number as a string
#
# E.g. base_converter(5, 2) == "101"
# base_converter(31, 16) == "1f"

HEX = { 10 => "a", 11 => "b", 12 => "c", 13 => "d", 14 => "e", 15 => "f" }

def base_converter(num, b)
end

# CHALLENGE: Eight queens puzzle precursor
#
# Write a recursive method that generates all 8! possible unique ways to
# place eight queens on a chess board such that no two queens are in
# the same board row or column (the same diagonal is OK).
#
# Each of the 8! elements in the return array should be an array of positions:
# E.g. [[0,0], [1,1], [2,2], [3,3], [4,4], [5,5], [6,6], [7,7]]
#
# My solution used 3 method parameters: current_row, taken_columns, and
# positions so far
def eight_queens_possibilities(current_row, taken_columns, positions)

end

def pascal(n)
end
