# Maximum difference problem
# arr[j] - arr[i] such that j > i
# 

def stock_picker(prices)
  max_profit = 0
  result = []

  prices.each_with_index do |best_buy, buy_day|
    prices.each_with_index do |best_sell, sell_day|
      profit = best_sell - best_buy
    if profit >  max_profit && buy_day < sell_day
      max_profit = profit
      result = [buy_day, sell_day]
    end
    end
  end
  p result
end

stock_picker([17,3,6,9,15,8,6,1,10])

