require 'rails_helper'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
     result = StringCalculator.add("")
     expect(result).to eq(0)
     puts "returns 0 for an empty string"
   end

   it 'returns sum for an string' do
     result = StringCalculator.add("1")
     expect(result).to eq(1)
     puts "returns 1 for an empty string"
   end

   it 'returns 10 for an string' do
    result = StringCalculator.add("2,2,6")
     expect(result).to eq(10)
   end

   it 'returns sum for an string' do
     result = StringCalculator.add("1,5")
     expect(result).to eq(6)
   end


 end
end