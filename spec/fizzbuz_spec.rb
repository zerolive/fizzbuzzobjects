require './fizzbuzz'
require 'rspec'

describe "The FizzBuzz" do

	it "is a FizzBuzz number" do
		expect{(FizzBuzz.build(14))}.not_to raise_error
		expect{(FizzBuzz.build(15))}.not_to raise_error
		expect{(FizzBuzz.build(20))}.to raise_error "20 is not a FizzBuzz number"
	end

	it "returns a number" do
		expect(FizzBuzz.build(15, 101)).to eq("101 is a number ")
	end

	it "does FizzBuzz" do
		expect(FizzBuzz.build(15, 20)).to eq("20 is a number Buzz")
		expect(FizzBuzz.build(15, 19)).to eq("19 is a number ")
		expect(FizzBuzz.build(15, 18)).to eq("18 is a number Fizz")
		expect(FizzBuzz.build(15, 17)).to eq("17 is a number ")
		expect(FizzBuzz.build(15, 16)).to eq("16 is a number ")
		expect(FizzBuzz.build(15, 15)).to eq("15 is a number FizzBuzz")
		expect(FizzBuzz.build(15, 14)).to eq("14 is a number ")
		expect(FizzBuzz.build(15, 13)).to eq("13 is a number ")
		expect(FizzBuzz.build(15, 12)).to eq("12 is a number Fizz")
		expect(FizzBuzz.build(15, 11)).to eq("11 is a number ")
		expect(FizzBuzz.build(15, 10)).to eq("10 is a number Buzz")
		expect(FizzBuzz.build(15, 9)).to eq("9 is a number Fizz")
		expect(FizzBuzz.build(15, 8)).to eq("8 is a number ")
		expect(FizzBuzz.build(15, 7)).to eq("7 is a number ")
		expect(FizzBuzz.build(15, 6)).to eq("6 is a number Fizz")
		expect(FizzBuzz.build(15, 5)).to eq("5 is a number Buzz")
		expect(FizzBuzz.build(15, 4)).to eq("4 is a number ")
		expect(FizzBuzz.build(15, 3)).to eq("3 is a number Fizz")
		expect(FizzBuzz.build(15, 2)).to eq("2 is a number ")
		expect(FizzBuzz.build(15, 1)).to eq("1 is a number ")
	end
	
end