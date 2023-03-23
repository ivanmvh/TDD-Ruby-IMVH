class Solver
  def factorial(number)
    raise ArgumentError, 'Input is not an integer' unless number.is_a? Integer
    if number.negative?
      raise ArgumentError, 'Input is negative'
    elsif number.zero?
      1
    else
      number * factorial(number - 1)
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    raise ArgumentError, 'Input must be a number' unless num.is_a? Integer

    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
