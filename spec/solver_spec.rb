require_relative '../solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns 1 when given 0' do
      expect(Solver.factorial(0)).to eq(1)
    end
    it 'returns the correct factorial for positive integers' do
      expect(Solver.factorial(5)).to eq(120)
      expect(Solver.factorial(10)).to eq(3_628_800)
    end
    it 'raises an exception for negative integers' do
      expect { Solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'reverses the given string' do
      expect(Solver.reverse('hello')).to eq('olleh')
      expect(Solver.reverse('ruby')).to eq('ybur')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when the number is divisible by 3' do
      expect(Solver.fizzbuzz(9)).to eq('fizz')
      expect(Solver.fizzbuzz(12)).to eq('fizz')
    end
    it 'returns "buzz" when the number is divisible by 5' do
      expect(Solver.fizzbuzz(10)).to eq('buzz')
      expect(Solver.fizzbuzz(25)).to eq('buzz')
    end
    it 'returns "fizzbuzz" when the number is divisible by both 3 and 5' do
      expect(Solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(Solver.fizzbuzz(30)).to eq('fizzbuzz')
    end
    it 'returns the number as a string for any other case' do
      expect(Solver.fizzbuzz(7)).to eq('7')
      expect(Solver.fizzbuzz(13)).to eq('13')
    end
  end
end
