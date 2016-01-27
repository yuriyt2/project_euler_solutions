def check_if_palindrome(num)
  num_string = num.to_s
  count = 1
  until count > num_string.length/2
    if num_string[count-1] != num_string[-count]
      return false
    end
    count+=1
  end
  true
end

puts check_if_palindrome(39485)
puts check_if_palindrome(88288)
puts check_if_palindrome(123321)
puts check_if_palindrome(412987789214)
puts check_if_palindrome(4129877289214)


def find_largest_palindrome_product
  num1 = 999
  result = 0
  until num1 == 890
    num2 = 999
    until num2 == 890
      if check_if_palindrome(num1*num2)
        if num1*num2 > result
        result = num1*num2
        end
      end
      num2 = num2 - 1
    end
    num1 = num1 - 1
  end
  result
end

puts find_largest_palindrome_product
