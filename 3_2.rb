# 累積和アルゴリズムのおかげで100点とってハネムーンできました
# 参考: http://sssslide.com/speakerdeck.com/catupper/aboutlei-ji-he
# 参考: http://www.f.waseda.jp/sakas/sakalab/semi.R/Rhints.html
input_lines = gets
lines = input_lines.split("\s")
# ダメージ有効範囲
damageScope = lines[0].to_i
# 最大範囲
maxLength = lines[1].to_i
# ダメージ取得
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
  # 累積和の実装
  inputDamageSum = []
  # 0だけ計算する
  damageSum = 0
  (0..damageScope - 1).each do |i|
    damageSum += inputDamage[i]
  end
  inputDamageSum << damageSum

  # 数列の作成
  current = 0
  # 数列つくって読み込めばO(n)でできる
  (damageScope..maxLength - 1).each do |i|
    inputDamageSum << inputDamageSum[current] - inputDamage[current] + inputDamage[i]
    current += 1
  end

  # 配列の最大値取得
  maxDamage = inputDamageSum.max
end
puts maxDamage