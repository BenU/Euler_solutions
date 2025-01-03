def even(number)
  return number/2 
end

def odd(number)
  return 3*number + 1
end

def collatz_length(number)
  count = 1
  while number != 1
    count+=1
    number.even? ? number = even(number) : number = odd(number)
  end
  return count
end

collatz_largest = 1
largest_length = 1
i = 1
start_time = Time.now
# for i in 1..1_000_000
while i < 1_000_000
  length = collatz_length(i)
  if length > largest_length
    collatz_largest = i
    largest_length = length 
  end
  i+=1
end
end_time = Time.now
puts "Time to run: #{end_time - start_time}"

puts "The longest Collatz sequence for numbers under 1M is for #{collatz_largest}."
puts "It is #{largest_length} numbers long"
puts "Done" 
