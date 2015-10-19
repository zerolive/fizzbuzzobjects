require './fizzbuzz'
require 'rspec'

describe "The FizzBuzz" do

	it "is a FizzBuzz number" do
		expect{(FizzBuzz.build(14))}.not_to raise_error
		expect{(FizzBuzz.build(15))}.not_to raise_error
		expect{(FizzBuzz.build(20))}.to raise_error "20 is not a FizzBuzz number"
	end
	
end