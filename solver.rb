# solver.rb
class Solver
  def self.factorial(num)
    raise ArgumentError, 'Factorial only accepts non-negative integers.' if num.negative?

    return 1 if num.zero?

    (1..num).reduce(:*)
  end

  def self.reverse(word)
    word.reverse
  end

  def self.fizzbuzz(num)
    return 'fizzbuzz' if num % 3 == 0 && num % 5 == 0
    return 'fizz' if num % 3 == 0
    return 'buzz' if num % 5 == 0

    n.to_s
  end
end
