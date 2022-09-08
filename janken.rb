def janken_hand(cpu_hand, player_hand)
  if cpu_hand == "g"
    puts "CPU...グー"
  elsif cpu_hand == "c"
    puts "CPU...チョキ"
  elsif cpu_hand == "p"
    puts "CPU...パー"
  else
  end

  if player_hand == "g"
    puts "あなた...グー"
  elsif player_hand == "c"
    puts "あなた...チョキ"
  elsif player_hand == "p"
    puts "あなた...パー"
  else
    puts "入力値が間違っています。"
  end
end

def janken(player_hand, cpu_hand, game_tiems)
  if player_hand == "g" && cpu_hand == "c"
    puts "勝ち！"
  elsif player_hand == "g" && cpu_hand == "p"
    puts "負け！"
  elsif player_hand == "c" && cpu_hand == "p"
    puts "勝ち！"
  elsif player_hand == "c" && cpu_hand == "g"
    puts "負け！"
  elsif player_hand == "p" && cpu_hand == "g"
    puts "勝ち！"
  elsif player_hand == "p" && cpu_hand == "c"
    puts "負け"
  elsif player_hand == cpu_hand
    puts "あいこ！"
  else
    puts "勝負ができません。"
  end
end

def result
  player_win = 0
  player_lose = 0
  if 
    player_win += 1
    player_lose += 1
    puts "#{player_win}勝#{player_lose}敗"
  end
end

puts "何本勝負？(press 1 or 3 or 5)"
game_tiems = gets.to_i
puts "#{game_tiems}本勝負を選びました"

(1..game_tiems).each do |x|
  cpu_hand = ["g", "c", "p"].sample
  puts "じゃんけん...(press g or c or p)"
  player_hand = gets.chomp
  player_hand = player_hand.to_s
  puts janken_hand(cpu_hand, player_hand)

  puts janken(player_hand, cpu_hand, game_tiems)
  
end
