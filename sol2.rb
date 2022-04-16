# https://codingcompetitions.withgoogle.com/codejam/round/0000000000876ff1/0000000000a46471
###### INPUT #######
# 4
# 4
# 6 10 12 8
# 6
# 5 4 5 4 4 4
# 10
# 10 10 7 6 7 4 4 5 7 4
# 1
# 10
####### OUTPUT #######
# Case #1: 4
# Case #2: 5
# Case #3: 9
# Case #4: 1

nb_test_case = gets.to_i

nb_test_case.times do |i|
  nb_dice_in_game = gets.to_i
  line = gets.split.map(&:to_i).sort
  res = 0
  tmp = 1
  (nb_dice_in_game).times do |num|
    if((tmp) <= line[0])
      res = res + 1
      tmp = tmp + 1
    end
    line.shift
  end
  print "Case ##{i + 1}: #{res}\n"
end
