require_relative 'solver'

@solver = Solver.new

p @solver.factorial(-1) #   eq 1
p @solver.factorial(0) #   eq 1
p @solver.factorial(1) #   eq 1
p @solver.factorial(2) #   eq 2
p @solver.factorial(3) #   eq 6
p @solver.factorial(10) #   eq 3_628_800

p @solver.reverse('abcd') #   eq 'dcba'
p @solver.reverse('abcdefg') #   eq 'gfedcba'

p @solver.fizzbuzz(93) #   eq 'fizz'
p @solver.fizzbuzz(100) #   eq 'buzz'
p @solver.fizzbuzz(30) #   eq 'fizzbuzz'
p @solver.fizzbuzz(90) #   eq 'fizzbuzz'
p @solver.fizzbuzz(14) #   eq 14
p @solver.fizzbuzz(28) #   eq 28
