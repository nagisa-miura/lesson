class Battler
  def initialize(battlername)
    @name = battlername
  end
  
  def attack_point
    10
  end
  
  attr_accessor :name
  attr_accessor :attack_message
  attr_accessor :hp
  attr_accessor :ap
  
end

class Hero < Battler
  def get_downed_message
    "うわぁぁぁぁー！"
  end
  
  def attack_point
    if rand(5) >= 3
      30
    else
      10
    end
  end
  
  def attack
    sleep 1
    @attack_message = "<<<<いくぜ！！！>>>"
    [ @attack_message, attack_point ]
  end
end

class Monster < Battler
  def get_downed_message
    "ぐぉぉぉぉぉー！"
  end
  
  def attack_point
    if rand(5) >= 4
      20
    else
      15
    end
  end

  def attack
    sleep 1
    @attack_message = "<<<<GURRRR>>>"
    [ @attack_message, attack_point ]
  end
end



hero = Hero.new("勇者")
monster = Monster.new("ガーゴイル")

puts "名前を入力してください"
hero.name = gets.chomp.to_s

attack = hero.attack
puts hero.name + "の攻撃"
puts attack[0].to_s
puts attack[1].to_s + "のダメージを与えた！"

attack = monster.attack
puts monster.name + "の攻撃"
puts attack[0].to_s
puts hero.name + "は" + attack[1].to_s + "のダメージを受けた！"
