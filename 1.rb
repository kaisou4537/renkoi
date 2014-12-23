input_lines = gets
result = 0
(0..input_lines.to_i - 1).each do |i|
  result += gets.to_i
end
puts result