x = 0

File.open('13_number_file.txt').each do |line|
  x += line.to_i
end
puts x
puts x.to_s[0..9]
