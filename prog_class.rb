class MainMonster
  attr_accessor :name
  attr_accessor :Max_hp
  attr_accessor :power
  
  def initialize
    puts "メインモンスターを召喚します"
  end
  
  def create
    puts "名前を入力してください"
    @name = gets.chomp.to_s
    while @name.empty? == true do
      puts "名前が入力されていません"
      puts "名前を入力してください"
      @name = gets.chomp.to_s
    end
    
    case @name
    when "スライム","ブチスライム" then
      @Max_hp = 9
      @power = 3
    when "ドラゴン" then
      @Max_hp = 100
      @power = 90
    else
      @Max_hp = rand(10..20)
      @power = rand(1..10)
    end
    
    puts "#{@name}を召喚しました"
    puts "ステータス(最大HP#{@Max_hp},攻撃力#{@power})"
  end
end

class SubMonster < MainMonster
  def initialize
    puts "仲間のモンスターを召喚します"
  end
  def create
    puts "名前を入力してください"
    @name = gets.chomp.to_s
    while @name.empty? == true do
      puts "名前が入力されていません"
      puts "名前を入力してください"
      @name = gets.chomp.to_s
    end
    
    case @name
    when "ホイミスライム" then
      @Max_hp = 5
      @power = 1
    when "マミー" then
      @Max_hp = 20
      @power = 15
    end
    puts "#{@name}を召喚しました"
    puts "ステータス(最大HP#{@Max_hp},攻撃力#{@power})"
  end
end

class Enemy
  def initialize
    puts "エンカウント！！！"
  end
  def encount
    enemy_1 = {name:"勇者",Max_hp: 100, power: 50}
    enemy_2 = {name: "戦士",Max_hp: 80, power: 80}
    e_count = rand(1..5)
    if  e_count > 3
      puts "#{enemy_1[:name]}が現れた！"
      puts "ステータス(最大HP#{enemy_1[:Max_hp]}攻撃力#{enemy_1[:power]})"
    elsif e_count <= 3
      puts "#{enemy_2[:name]}が現れた！"
      puts "ステータス(最大HP#{enemy_2[:Max_hp]}攻撃力#{enemy_2[:power]})"
    end
  end
end