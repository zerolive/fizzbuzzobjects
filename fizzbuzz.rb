class FizzBuzz

  class << self

    def build fizzbuzznumber, cap=nil
      raise "#{fizzbuzznumber} is not a FizzBuzz number" if is_fizzbuzz_number?(fizzbuzznumber).count != 2
      if !cap.nil?
        return create_return_string(fizzbuzznumber, cap)
      end
    end

    private

    def is_fizzbuzz_number? fizzbuzznumber
      @buzznumfizznum = []
      looking_quantity_divisors(fizzbuzznumber)
      return @buzznumfizznum
    end 

    def looking_quantity_divisors fizzbuzznumber
      @divisors = fizzbuzznumber
      while @divisors > 2
        @divisors -= 1
        adding_divisors(fizzbuzznumber)
      end
    end

    def adding_divisors fizzbuzznumber
        if (fizzbuzznumber % @divisors).zero?
          @buzznumfizznum << @divisors
        end
    end

    def create_return_string fizzbuzznumber, cap 
        textreturn = NumberFizzBuzz.build(fizzbuzznumber, cap) if textreturn.nil?
        textreturn = NumberFizz.build(fizzbuzznumber, cap) if textreturn.nil?
        textreturn = NumberBuzz.build(fizzbuzznumber, cap) if textreturn.nil?
        textreturn = "#{cap} is just a number" if textreturn.nil?
        return textreturn
    end
  end

end

class NumberFizz < FizzBuzz

  class << self

    def build fizzbuzznumber, cap
      numfizz = is_fizzbuzz_number?(fizzbuzznumber).last
      "#{cap} is a Fizz number" if (cap % numfizz).zero?
    end

    private

  end

end

class NumberBuzz < FizzBuzz

  class << self

    def build fizzbuzznumber, cap
      numbuzz = is_fizzbuzz_number?(fizzbuzznumber).first
      "#{cap} is a Buzz number" if (cap % numbuzz).zero?
    end

    private

  end

end

class NumberFizzBuzz < FizzBuzz

  class << self

    def build fizzbuzznumber, cap
      numbuzz = is_fizzbuzz_number?(fizzbuzznumber).first
      numfizz = is_fizzbuzz_number?(fizzbuzznumber).last
      return "#{cap} is a FizzBuzz number" if (cap % numbuzz).zero? && (cap % numfizz).zero?
    end

    private

  end

end

#FizzBuzz.build(15, 20)