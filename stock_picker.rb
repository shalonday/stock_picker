def stock_picker (stocks)
  max = 0
  idx_buy = 0
  idx_sell = 0

  #for each val, check: if i buy this stock and sell on subsequent days, how much do I earn? store that in max.
  stocks.each_with_index do |check_buy_val, idx| 
    
    for i in idx + 1 ... stocks.length do #the next day and subsequent days.
      revenue = stocks[i] - check_buy_val #stocks[i] represents prospect sell value
      if revenue > max
        max = revenue
        idx_buy = idx
        idx_sell = i
        
      end
    end
  end
  result = [idx_buy, idx_sell]
  p result
end

stock_picker([17,3,6,9,15,8,6,1,10])