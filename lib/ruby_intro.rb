# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort.last(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  appeared = Set.new
  for x in arr
    if appeared.include?(n-x)
      return true
    end
    appeared << x
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s.match?(/^[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z].*/)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return s.match?(/^(0|([01]*00))$/)
end

# Part 3

class BookInStock
# YOUR CODE HERE 
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if not isbn.is_a? String or isbn.empty? or not (price.is_a? Integer or price.is_a? Float) or price <= 0
      raise ArgumentError, "Argument error"
    end 
    @isbn, @price  = isbn, price
  end
  
  def price_as_string
    "$%.2f" % [@price]
  end
end
