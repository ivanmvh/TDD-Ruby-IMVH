require './solver'

describe Solver do
  context 'Test Solver methods:' do
    before(:each) do
      @solver = Solver.new
    end

    it 'Should calculate factorial of an integer number: ' do
      expect(@solver.factorial(0)).to eq 1
      expect(@solver.factorial(1)).to eq 1
      expect(@solver.factorial(2)).to eq 2
      expect(@solver.factorial(3)).to eq 6
      expect(@solver.factorial(10)).to eq 3_628_800
    end

    it 'Should reverse a word ' do
      expect(@solver.reverse('abcd')).to eq 'dcba'
      expect(@solver.reverse('abcdefg')).to eq 'gfedcba'
    end

    it 'Run fizzbuzz method with argument integer number and check result ' do
      expect(@solver.fizzbuzz(93)).to eq 'fizz'
      expect(@solver.fizzbuzz(100)).to eq 'buzz'
      expect(@solver.fizzbuzz(30)).to eq 'fizzbuzz'
      expect(@solver.fizzbuzz(90)).to eq 'fizzbuzz'
      expect(@solver.fizzbuzz(14)).to eq 14
      expect(@solver.fizzbuzz(28)).to eq 28
    end
  end
end
