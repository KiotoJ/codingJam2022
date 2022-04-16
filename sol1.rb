nb_test_case = gets.to_i
LIMIT = 1000000

nb_test_case.times do |i|

  print "Case ##{i}: "

      p1 = gets.split.map(&:to_i)
      p2 = gets.split.map(&:to_i)
      p3 = gets.split.map(&:to_i)

      p1_col = [p1[0], p2[0], p3[0]]
      p2_col = [p1[1], p2[1], p3[1]]
      p3_col = [p1[2], p2[2], p3[2]]
      p4_col = [p1[3], p2[3], p3[3]]

      p1_min = p1_col.min
      p2_min = p2_col.min
      p3_min = p3_col.min
      p4_min = p4_col.min

      sum_min = [p1_min, p2_min, p3_min, p4_min].sum

      if(sum_min < LIMIT)
          print "IMPOSSIBLE\n"
      end
      pivot = p1_min - 1

      while([p2_min, p3_min, p4_min].sum + pivot == 1000000)
        print "#{pivot} #{p2_min} #{p3_min} #{p4_min}"
        
        pivot -= 1
      end

end
