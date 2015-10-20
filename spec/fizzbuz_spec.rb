require './fizzbuzz'
require 'rspec'

describe "The FizzBuzz" do

	it "is a FizzBuzz number" do
		expect{(FizzBuzz.build(14))}.not_to raise_error
		expect{(FizzBuzz.build(15))}.not_to raise_error
		expect{(FizzBuzz.build(20))}.to raise_error "20 is not a FizzBuzz number"
	end

	it "returns a number" do
		expect(FizzBuzz.build(15, 101)).to eq("101 is just a number")
	end

	it "does FizzBuzz" do
		expect(FizzBuzz.build(15, 20)).to eq("20 is a Buzz number")
		expect(FizzBuzz.build(15, 15)).to eq("15 is a FizzBuzz number")
		#expect(FizzBuzz.build(15, 20)).to eq("18 is a Fizz number")
		#expect(FizzBuzz.build(15, 20)).to eq("17 is just a number")
		#expect(FizzBuzz.build(15, 20)).to eq("16 is just a number")
		#expect(FizzBuzz.build(15, 20)).to eq("15 is a FizzBuzz number")
		#expect(FizzBuzz.build(15, 20)).to eq("14 is just a number")
		#expect(FizzBuzz.build(15, 20)).to eq("13 is just a number")
		#expect(FizzBuzz.build(15, 20)).to eq("12 is a Fizz number")
		#expect(FizzBuzz.build(15, 20)).to eq("11 is just a number")
		#expect(FizzBuzz.build(15, 20)).to eq("10 is a Buzz number")
		#expect(FizzBuzz.build(15, 20)).to eq("9 is a Fizz number")
		#expect(FizzBuzz.build(15, 20)).to eq("8 is just a number")
		#expect(FizzBuzz.build(15, 20)).to eq("7 is just a number")
		#expect(FizzBuzz.build(15, 20)).to eq("6 is a Fizz number")
		#expect(FizzBuzz.build(15, 20)).to eq("5 is a Buzz number")
		#expect(FizzBuzz.build(15, 20)).to eq("4 is just a number")
		#expect(FizzBuzz.build(15, 20)).to eq("3 is a Fizz number")
		#expect(FizzBuzz.build(15, 20)).to eq("2 is just a number")
		#expect(FizzBuzz.build(15, 20)).to eq("1 is just a number")
	end
	
end