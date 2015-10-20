class FizzBuzz

  class << self

    def build fizzbuzznumber, number=nil
      raise "#{fizzbuzznumber} is not a FizzBuzz number" if is_fizzbuzz_number?(fizzbuzznumber).count != 2
      return create_return_string(fizzbuzznumber, number) if !number.nil?
    end

    private

    def is_fizzbuzz_number? fizzbuzznumber
      @buzznumfizznum = []
      looking_quantity_divisors(fizzbuzznumber)
      return @buzznumfizznum
    end 

    def looking_quantity_divisors fizzbuzznumber
      divisors = fizzbuzznumber
      while divisors > 2
        divisors -= 1
        adding_divisors(fizzbuzznumber, divisors)
      end
    end

    def adding_divisors fizzbuzznumber , divisor
        if (fizzbuzznumber % divisor).zero?
          @buzznumfizznum << divisor
        end
    end

    def create_return_string fizzbuzznumber, number 
        textreturn = "#{number} is a number " #No se que hacer con el espacio del final :(
        textreturn << NumberFizz.build(fizzbuzznumber, number).to_s
        textreturn << NumberBuzz.build(fizzbuzznumber, number).to_s
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

  def self.build fizzbuzznumber, number
    numfizz = fizznumber(fizzbuzznumber)
    return "Fizz" if (number % numfizz).zero?
  end

end

class NumberBuzz < FizzBuzz

  def self.build fizzbuzznumber, number
    numbuzz = buzznumber(fizzbuzznumber)
    return "Buzz" if (number % numbuzz).zero?
  end

end