class FizzBuzz

  class << self

    def build fizzbuzznumber, number=nil
      raise "#{fizzbuzznumber} is not a FizzBuzz number" if is_fizzbuzz_number?(fizzbuzznumber).count != 2
      if !number.nil?
        return create_return_string(fizzbuzznumber, number)
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

    def create_return_string fizzbuzznumber, number 
        textreturn = ""
        textreturn << NumberFizz.build(fizzbuzznumber, number)
        textreturn << NumberBuzz.build(fizzbuzznumber, number)
        textreturn = "#{number} is a number" << " #{textreturn}"
        return textreturn
    end

    def buzznumber fizzbuzznumber
      is_fizzbuzz_number?(fizzbuzznumber).first
    end

    def fizznumber fizzbuzznumber
      is_fizzbuzz_number?(fizzbuzznumber).last
    end

  end

end

class NumberFizz < FizzBuzz

  class << self

    def build fizzbuzznumber, number
      numfizz = fizznumber(fizzbuzznumber)
      if (number % numfizz).zero?
        return "Fizz"
      else
        return ""
      end
    end

    private

  end

end

class NumberBuzz < FizzBuzz

  class << self

    def build fizzbuzznumber, number
      numbuzz = buzznumber(fizzbuzznumber)
      if (number % numbuzz).zero?
        return "Buzz" 
      else
        return ""
      end
    end

    private

  end

end

#FizzBuzz.build(15, 20)