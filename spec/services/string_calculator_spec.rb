require 'rails_helper'
# require 'string_calculator' 

RSpec.describe StringCalculator do
  describe '#add' do
     it 'returns 0 for an empty string' do
       result = StringCalculator.add("")
       expect(result).to eq(0)
       puts "returns 0 for an empty string"
     end

     it 'returns sum for a single number' do
       result = StringCalculator.add("1")
       expect(result).to eq(1)
       puts "returns 1 for an empty string"
     end

     it 'returns sum for multiple string' do
       result = StringCalculator.add("0,5")
       expect(result).to eq(5)
     end

     it 'returns 9 for an string' do
       result = StringCalculator.add("2,1,6")
       expect(result).to eq(9)
     end

     it 'returns 13 for an given string' do
       result = StringCalculator.add("1,5,2,5")
       expect(result).to eq(13)
     end

     it 'returns exception for negative numbers' do
        result = StringCalculator.add("1,-2,3,-4,-6")
        expect(result).to eq("negative numbers not allowed -2, -4, -6")
     end

     it 'returns 20 for an \n string' do
       result = StringCalculator.add('2\n4,6\n8')
       expect(result).to eq(20)
     end

     it 'returns invalid for an empty string' do
       result = StringCalculator.add('1,\n')
       expect(result).to eq('invalid')
     end

     it 'returns sum of number for string' do
       result = StringCalculator.add('//;\n1;2;4')
       expect(result).to eq(7)
     end

     it 'returns sum of string and not include number >1000' do
       result = StringCalculator.add('2,1001')
       expect(result).to eq(2)
     end

     it 'returns sum for string contain *' do
       result = StringCalculator.add('/[***]\n1***2***3')
       expect(result).to eq(6)
     end

     it 'returns exception for negative numbers' do
       result = StringCalculator.add('1,-2\n,-3,\n')
       expect(result).to eq("negative numbers not allowed -2, -3")
     end

     it 'returns sum when string contain multiple delimiters' do
       result = StringCalculator.add('//[*][%]\n1*2%3')
       expect(result).to eq(6)
     end

   end
end