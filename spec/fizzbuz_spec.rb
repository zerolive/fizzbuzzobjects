require './fizzbuzz'
require 'rspec'

describe "The FizzBuzz" do

	it "is a FizzBuzz number" do
		expect(FizzBuzz.build(14)).to eq(true)
		expect(FizzBuzz.build(15)).to eq(true)
		expect(FizzBuzz.build(20)).to eq(false)
	end
	
end