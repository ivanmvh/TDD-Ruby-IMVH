require './solver'
describe Solver do
  before(:each) do
    @solver = Solver.new
  end
  it 'Should calculate factorial of an integer number: ' do
    expect(@solver.factorial(0)).to eq 1
    expect(@solver.factorial(1)).to eq 1
    expect(@solver.factorial(3)).to eq 6
  end
  context 'Should throw an error when input is not an integer' do
    it 'should throw an error when given a string' do
      expect { @solver.factorial('v') }.to raise_error(ArgumentError)
    end
    it 'should throw an error when given a negative number' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
    it 'should throw an error when given a nil' do
      expect { @solver.factorial(nil) }.to raise_error(ArgumentError)
    end
  end
  it 'Should reverse a word ' do
    expect(@solver.reverse('abcd')).to eq 'dcba'
    expect(@solver.reverse('abcdefg')).to eq 'gfedcba'
  end
  it 'Run fizzbuzz method with argument integer number and check result ' do
    expect(@solver.fizzbuzz(93)).to eq 'fizz'
    expect(@solver.fizzbuzz(90)).to eq 'fizzbuzz'
    expect(@solver.fizzbuzz(28)).to eq '28'
  end
  context 'Should throw an error when input is not an integer' do
    it 'should throw an error when given a string' do
      expect { @solver.fizzbuzz('alex') }.to raise_error(ArgumentError)
    end
    it 'should throw an error when given a array' do
      expect { @solver.fizzbuzz([1, 2, 3]) }.to raise_error(ArgumentError)
    end
    it 'should throw an error when given a nil' do
      expect { @solver.fizzbuzz(nil) }.to raise_error(ArgumentError)
    end
  end
end
