def stock_picker(prices)
  min_price = prices[0]
  max_profit = 0
  best_days = []

  prices.each_with_index do |price, day|
    if price < min_price
      min_price = price
    elsif price - min_price > max_profit
      max_profit = price - min_price
      best_days = [prices.index(min_price), day]
    end
  end
  best_days
  p "The best day to buy is day #{best_days[0]} and the best day to sell is day #{best_days[1]} for a profit of $#{prices[best_days[1]] - prices[best_days[0]]} i.e. $#{prices[best_days[1]]} - $#{prices[best_days[0]]}"
end

stock_price = [17,3,6,9,15,8,6,1,10]

stock_picker(stock_price)