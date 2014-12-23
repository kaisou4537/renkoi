# 愚直にやった結果は箱根への新婚旅行でした 60点
input_lines = gets
lines = input_lines.split("\s")
# ダメージ有効範囲
damageScope = lines[0].to_i
# 最大範囲
maxLength = lines[1].to_i
inputDamage = []
(0..maxLength - 1).each do |i|
  inputDamage << gets.to_i
end

# 最大ダメージ
maxDamage = 0
# 現在のダメージ
currentDamage = 0
if maxLength == damageScope
  # 範囲が同じ場合は全ての合計
  (0..inputDamage.length - 1).each do |i|
    maxDamage += inputDamage[i]
  end
else
  (0..maxLength - damageScope).each do |i|
    currentDamage = 0
    # ダメージ計算
    (i..damageScope + i - 1).each do |j|
      currentDamage += inputDamage[j]
    end

    # max値取得
    if currentDamage > maxDamage
      maxDamage = currentDamage
    end
  end
end
puts maxDamage