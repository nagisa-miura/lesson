p_life = 100
step = 0
encounter = 0

#戦闘シーンをメソッド化

def battle(player)
  puts "敵が現れた"
  e_life = rand(10..50)
  puts "敵の体力は#{e_life}です"

  while true
    p_atack = rand (15..20)
    e_atack = rand (1..20)
    e_life -= p_atack
    player -= e_atack
    puts "あなたの攻撃！"
    puts "#{p_atack}のダメージ"
    sleep(1)
    if e_life < 0
      puts "勝利！！"
      break
    end
      puts "敵の体力は残り#{e_life}です"
      puts "敵の攻撃"
      puts "#{e_atack}のダメージ"
      if player < 0
          puts "あなたは死にました"
          break
      end
  end
  return player
end

while step < 4
  encounter = rand(0..2)
  puts "・・・"
  if encounter == 2
      p_life = battle(p_life)
      if p_life < 0
        break
      end
      puts "あなたの残り体力は#{p_life}です"
  end
  step += 1
end