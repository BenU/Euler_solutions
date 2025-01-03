def tri_num(nth)
  return 0 if nth == 0
  return nth * (nth +1)/2
end

def factors(n)
  return [1] if n == 1
  f = []
  x = 1
  while x < Math.sqrt(n)
    if n%x == 0
      f.push(x, n/x)
    end
    x += 1
  end
  return f.uniq
end

number_of_factors = 0
n = 1 
start_time = Time.now
while number_of_factors <= 500 do 
  tri_num = tri_num(n) 
  # puts "The #{n}th Triangle Number is #{tri_num}.
  factors = factors(tri_num)
  number_of_factors = factors&.length.to_i
  puts "The factors for #{n}th triangle number, #{tri_num}, are #{factors} and there are #{number_of_factors}." if number_of_factors > 400
  n += 1
end
end_time = Time.now
puts "Using the uniq method took #{end_time - start_time} seconds."

