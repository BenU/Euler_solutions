def even(number)
  return number/2 
end

def odd(number)
  return 3*number + 1
end

def collatz_array(number)
  a = []
  while number != 1
    a << number
    number.even? ? number = even(number) : number = odd(number)
  end
  return a
end


longest_squence = []
start_time = Time.now
for i in 1..1_000_000
  collatz_array(i)
  if collatz_array(i).length > longest_squence.length
    longest_squence = collatz_array(i)
  end
end
end_time = Time.now
puts "Time to run: #{end_time - start_time}"

puts "The longest Collatz sequence for numbers under 1M is for #{longest_squence[0]}"
puts "It is #{longest_squence.length} numbers long"
puts *longest_squence
