class Caracter
  attr_accessor :name
  attr_accessor :power
  attr_accessor :hp
  
  def initialize
    puts "勇者を生成します"
    puts "名前を入力してください"
    self.name = gets.chomp.to_s
    self.power = rand(1..6)
    self.hp = rand(30..70)
    puts "#{self.name}(攻撃力#{self.power})を召喚した"
  end
  
  def battle
    sleep 1
    damage = 10 * self.power
    puts "#{self.name}は#{damage}のダメージを与えた！"
  end
    
    
end