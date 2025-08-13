# ARGV[i]で引数の経過年数を取得できます。
# 実行サンプル
def cat_population(years)
  kittens = 1
  cats = 0
  history = []

  years.times do |year|
    if year >= 2
      new_cats = history[year - 2][:kittens]
      cats += new_cats
    end

    new_kittens = cats
    kittens += new_kittens
  
    history << {kittens: kittens, cats:cats}
  end
  { kittens: kittens, cats: cats }
end









puts ARGV[0]
