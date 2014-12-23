input_lines = gets
result = 0
(0..input_lines.to_i - 1).each do |i|
  # 入力値取得
  lines = gets.split("\s")
  # 必要な在庫
  targetStock = lines[0].to_i
  # 今ある在庫
  currentStock = lines[1].to_i
  # 値段
  productPrice = lines[2].to_i
  # 必要経費
  result += (targetStock - currentStock > 0 ? (targetStock - currentStock) * productPrice : 0)
end
puts result