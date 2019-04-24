class Caracter
  attr_accessor :name
  attr_accessor :power
  attr_accessor :hp
  
  def initialize
    puts "キャラクターを生成します"
    puts "名前を入力してください"
    @name = gets.chomp.to_s
    @power = rand(1..6)
    @hp = rand(30..70)
    puts "#{@name}(攻撃力#{@power})を召喚した"
  end
  

  def battle
    damage = 10 * @power
    puts "#{@name}はスライムに#{damage}のダメージを与えた！"
    if 30 - damage <= 0
      puts "スライムを倒した！"
    else
      puts "スライムの残りHP:#{30 - damage}"
    end
  end
end


class Monster
  attr_accessor :name
  attr_accessor :power
  attr_accessor :hp
  
  def initialize
    @name = "スライム"
    @power = rand(1..3)
    @hp = 30
    puts "スライム(攻撃力:#{@power},HP#{@hp})が現れた！"
  end
end