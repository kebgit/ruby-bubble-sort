def bubble_sort (array)
  
  (1..array.length - 1).each do
    array.each_with_index do |value, index|
      if index < array.length - 1 && value > array[index+1]
        temp_swap = array[index+1]
        array[index+1] = value
        array[index] = temp_swap
      end
    end
  end
  p array
end

bubble_sort([18,123,1261361,136123,12,1231,51,26,161,37,13,14,1,3251,61,36123,1,616])

# inefficient, could be cut short by checking if it is already sorted after each pass, or by ignoring the last n after n passes that are guaranteed to be sorted