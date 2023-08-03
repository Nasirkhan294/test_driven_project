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

  def self.fizzbuzz(n)
    return 'fizzbuzz' if n % 3 == 0 && n % 5 == 0
    return 'fizz' if n % 3 == 0
    return 'buzz' if n % 5 == 0

    n.to_s
  end
end
