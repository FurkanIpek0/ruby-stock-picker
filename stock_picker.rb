def stock_picker(prices)
  new_prices = []
  prices.each_with_index do |price, index|
    new_price = prices[index..prices.length - 1].each_with_index.map { |p, i| [p, i + index] }.max
    new_prices.push([(new_price[0] - price), index, new_price[1]])
  end
  p new_prices
  return [] if new_prices.empty? 
  last_price_indexes = [new_prices.max[1], new_prices.max[2]]
  return [] if last_price_indexes[0] == last_price_indexes[1]
  last_price_indexes
end