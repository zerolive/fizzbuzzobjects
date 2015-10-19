class FizzBuzz

	class << self

		def build number
			is_fizzbuzz_number?(number)
		end

    private

    def is_fizzbuzz_number? number
    	divisors = number
    	numfizznumbuzz = []
    	while divisors >= 2
    		divisors -= 1
    		if number % divisors == 0
    			numfizznumbuzz << divisors
    		end
    	end
    	return true if numfizznumbuzz.count == 2
    	return false if numfizznumbuzz.count != 2
    end 

	end

end

class NumberFizz

end

class NumberBuzz

end

class NumberFizzBuzz

end