class FizzBuzz

	class << self

		def build fizzbuzznumber
			is_fizzbuzz_number?(fizzbuzznumber)
		end

    private

    def is_fizzbuzz_number? fizzbuzznumber
    	numbuzznumfizz = looking_divisors(fizzbuzznumber)
    	raise "#{fizzbuzznumber} is not a FizzBuzz number" if numbuzznumfizz.count != 2
    end 

    def looking_divisors fizzbuzznumber
    	fizzbuzznumbers = []
    	divisors = fizzbuzznumber
    	while divisors > 2
    		divisors -= 1
    		if fizzbuzznumber % divisors == 0
    			fizzbuzznumbers << divisors
    		end
    	end
    	return fizzbuzznumbers
    end

	end

end

class NumberFizz

end

class NumberBuzz

end

class NumberFizzBuzz

end