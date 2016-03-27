
require './fp.rb'

def assert(a, b = true, message = 'Error!')
  raise "#{message} #{a} NOT EQUAL TO #{b}" unless a == b
end

assert fact(1), 1
assert fact(3), 6

assert fib(0), 0
assert fib(1), 1
assert fib(2), 1
assert fib(3), 2
assert fib(4), 3

assert listsum([]), 0
assert listsum([2]), 2
assert listsum([1, 2, 3]), 6
assert listsum([0, 0, 4]), 4
assert listsum([4, 3, 2, 1]), 10

assert forr(2, 5, -> (i) { i*i } ), [4, 9, 16, 25]
