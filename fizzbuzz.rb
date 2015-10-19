class FizzBuzz

	class << self

		def build fizzbuzznumber
			raise "#{fizzbuzznumber} is not a FizzBuzz number" if is_fizzbuzz_number?(fizzbuzznumber).count != 2
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
    		if fizzbuzznumber % @divisors == 0
    			@buzznumfizznum << @divisors
    		end
    end

	end

end

class NumberFizz

end

class NumberBuzz

end

class NumberFizzBuzz

end