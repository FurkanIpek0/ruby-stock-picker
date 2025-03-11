def stock_picker(prices)
  new_prices = []
  prices.each_with_index do |price, index|
    new_price = prices[index..prices.length - 1].each_with_index.max
    new_prices.push([(new_price[0] - price), index, new_price[1] + 1])
  end
  [new_prices.max[1], new_prices.max[2]]
end
p stock_picker([17,3,6,9,15,8,6,1,10])