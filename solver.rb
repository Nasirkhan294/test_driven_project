# solver.rb
class Solver
  def self.factorial(num)
    raise ArgumentError, 'Factorial only accepts non-negative integers.' if num.negative?

    return 1 if num.zero?

    (1..num).reduce(:*)
  end
end
