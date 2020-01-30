# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  arr.max(2).reduce(0, :+)
end

def sum_to_n? arr, n
  if arr.length < 2   #if array contains less than 2 elements this is false
                      #by default
    false
  else
    matching_found = false;
    arr.each_with_index{ |elem_i, i|
      arr.each_with_index{ |elem_j, j| 
        if elem_i + elem_j == n && i != j 
          #puts "matching_found #{elem_i} + #{elem_j} = #{n}";
          matching_found = true;
        end
        break if matching_found
      }
      break if matching_found
    }
    matching_found
  end
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[bcdfghjklmnpqrstvxyzBCDFGHJKLMNPQRSTVWXYZ]/
end

def binary_multiple_of_4? s
  if !!(s =~ /^[01]*(0{1}|(00))$/)
    true
  else 
    false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if price <= 0
      raise ArgumentError
    end
    if isbn == ''
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  #setter and getter for isbn
  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  #setter and getter for price
  def price
    @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string()
    '$%.2f' % [@price]
  end

end
