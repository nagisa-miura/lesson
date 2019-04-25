require "./prog_class"

def title_call
  puts "rubyクエスト"
  yield
end
subtitle = "〜rubyでつくるRPG〜"

title_call{puts subtitle}

main = MainMonster.new
main.create

sub = SubMonster.new
sub.create

try = Enemy.new
try.encount
