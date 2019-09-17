# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  total = 0
  for i in 0...arr.length do
    total += arr[i]
  end
  return total
end

def max_2_sum arr
  # YOUR CODE HERE
  first = 0
  second = 0
  startInd = 0
  
  if arr.length >= 2
    startInd = 2
    if arr[0] < arr[1]
      first = arr[1]
      second = arr[0]
    else
      first = arr[0]
      second = arr[1]
    end
  elsif arr.length == 1
    first = arr[0]
    return first
  end
  
  for i in startInd...arr.length do
    if first < arr[i]
      second = first
      first = arr[i]
    elsif second < arr[i]
      second = arr[i]
    end
  end
  
  return first + second
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  currNum = 0
  
  for i in 0...arr.length do
    currNum = arr[i]
    for j in 0...arr.length do
      if currNum + arr[j] == n and j != i
        return true
      end
    end
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
  if s[0,1].upcase == "A" || s[0,1].upcase == "E" || s[0,1].upcase == "I" || s[0,1].upcase == "O" || s[0,1].upcase == "U"
    return false
  end
  
  if s[0,1] =~ /[[:alpha:]]/
    return true
  end
  
  return false
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  if s.size == 0
    return false
  end
  
  total = 0
  currVal = 1
  puts s
  for i in ((s.size)-1).downto(0) do
    puts "loop working"
    puts s[i]
    if s[i] == "1"
      puts "adding"
      total += currVal
    end
    if s[i] != "1" && s[i] != "0"
      puts "wasnt 1 or 0"
      return false
    end
    currVal = currVal * 2
  end
  
  if total % 4 == 0
    puts "was multiple of 4"
    return true
  end
  puts "not multiple of 4"
  return false
  
end

# Part 3

class BookInStock
# YOUR CODE HERE

  def initialize(isbnNum,cost)
    
    if isbnNum.size == 0 || cost <= 0
      raise ArgumentError
    end
    
    @isbn = isbnNum
    @price = cost
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(newIsbn)
    @isbn = newIsbn
  end
  
  def price
    @price
  end
  
  def price=(newPrice)
    @price = newPrice
  end
  
  def price_as_string
    
    priceStr = price.to_s
    numDec = 0
    pastDec = false
    
    for i in 0...(priceStr.size) do
      if pastDec == true
        numDec = numDec + 1
      end
      if priceStr[i] == "."
        pastDec = true
      end
    end
    
    if numDec == 0
      return "$" + price.to_s + ".00"
    end
    
    if numDec == 1
      return "$" + price.to_s + "0"
    end
    
    return "$" + price.to_s
  end
  
end
