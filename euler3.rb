# Prime number checker function
def is_prime(num)

  if num <= 0
    return false
  elsif num == 1 || num == 2
    return true
  end

  n = 2
  until (n-1)*(n-1) > num #Check until the square root
    if num % n == 0
      return false
    end
    n+=1
  end
  true
end



def largest_prime(num)
  largest_prime_solution = 0

  for n in 1..num do
    break if n*n > num # Check only until square root to not check numbers twice
    if num % n == 0 && is_prime(n)
      largest_prime_solution = n
      if num/n > n && is_prime(num/n) # Check that the other multiple is not prime, this ensures any solution over the square root is accounted for
        largest_prime_solution = num/n
      end
    end
  end

  largest_prime_solution
end

#Prime checker tests
# puts is_prime(1)
# puts is_prime(2)
# puts is_prime(3)
# puts is_prime(4)
# puts is_prime(8)
# puts is_prime(11)
# puts is_prime(21)
# puts is_prime(31)

#Solution checker
# puts largest_prime(0)
# puts largest_prime(1)
# puts largest_prime(2)
# puts largest_prime(5)
# puts largest_prime(10)
# puts largest_prime(30)
# puts largest_prime(70)
# puts largest_prime(39)
puts largest_prime(600851475143)
