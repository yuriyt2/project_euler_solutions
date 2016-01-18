def fib_seq
  previous_num = 1
  current_num = 1
  result = 0
  until current_num >= 4000000
    current_num = current_num + previous_num
    puts current_num
    previous_num = current_num - previous_num
    puts previous_num
    if current_num % 2 == 0
      result += current_num
    end
  end
  result
end

puts fib_seq
