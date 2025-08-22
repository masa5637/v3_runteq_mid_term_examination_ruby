# ARGV[i]で引数の経過年数を取得できます。
# 実行サンプル
def cat_population(years)
  cats = 0
  kittens = [0]

  years.times do
    kittens.map! { |k| k + 1 }

    matured = kittens.select { |k| k >= 2 }
    cats += matured.size
    kittens.reject! { |k| k >= 2 }

    kittens += [0] * cats
  end

  { cat: cats, kitten: kittens.size }
end

years = ARGV[0].to_i
puts cat_population(years)
