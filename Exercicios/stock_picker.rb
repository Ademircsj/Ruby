#Problem 2: Implement a method #stock_picker that takes in an array of stock prices,
#one for each hypothetical day. It should return a pair of days representing
#the best day to buy and the best day to sell. Days start at 0.
#

def stock_picker(prices)
  day_buy = 0
  day_sell= 0
  price = 0
  profit = 0

  prices.each_with_index do |valor, indice|

    maximum = prices[indice..prices.length].max
    if (maximum - valor) > profit
      profit = maximum - valor
      day_buy = indice
      day_sell = prices.index(maximum)

    end
  end
  puts "Lucro: #{profit}"
  puts "Dia compra: #{day_buy}"
  puts "Dia venda: #{day_sell}"
end


prices = [17,30,6,9,15,28,6,48,10]


stock_picker(prices)
