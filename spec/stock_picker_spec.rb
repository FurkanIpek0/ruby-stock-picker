require 'rspec'
require_relative '../stock_picker.rb' # Assuming the method is in a file named 'stock_picker.rb'

RSpec.describe '#stock_picker' do
  it 'returns the correct buy and sell days for a normal case' do
    expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
  end

  it 'returns the correct buy and sell days when prices are always increasing' do
    expect(stock_picker([1,2,3,4,5,6,7,8,9,10])).to eq([0,9]) # Buy on day 0, sell on day 9
  end

  it 'returns the correct buy and sell days when prices are always decreasing' do
    expect(stock_picker([10,9,8,7,6,5,4,3,2,1])).to eq([]) # No valid transaction
  end



  it 'returns the correct buy and sell days when the lowest price is the last day' do
    expect(stock_picker([5,6,7,8,9,10,1])).to eq([0,5]) # Buy at 5, sell at 10
  end

  it 'returns an empty array if only one day is provided' do
    expect(stock_picker([5])).to eq([])
  end

  it 'returns an empty array if no prices are provided' do
    expect(stock_picker([])).to eq([])
  end

end
