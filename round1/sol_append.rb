# https://codingcompetitions.withgoogle.com/codejam/round/0000000000877ba5/0000000000aa8e9c#problem
##### INPUT ######
# 3
# PEEL
# AAAAAAAAAA
# CODEJAMDAY
###### OUTPUT #######
# Case #1: PEEEEL
# Case #2: AAAAAAAAAA
# Case #3: CCODDEEJAAMDAAY


nb_test_case = gets.to_i

nb_test_case.times do |i|
  line = gets
  res = []
  p = 1
  size_chars_distinct = line.chars.uniq.size

  if(size_chars_distinct == 2)
    print "Case ##{i+1}: #{line}\n"
  elsif(size_chars_distinct > 2)
    line.size.times do |c|
      if(line[p])
        if(line[p-1].ord < line[p].ord)
          res.push(line[c]*2)
        elsif(line[p-1].ord == line[p].ord)
          k = p + 1
          next_char = nil
          while (line[k] && line[p].ord == line[k].ord)
            k +=1
          end
          next_char = line[k]
          if(next_char.ord < line[c].ord)
            res.push(line[c])
          elsif(next_char.ord > line[c].ord)
            res.push(line[c]*2)
          end
        else
          res.push(line[c])
        end
      end
      p += 1
    end
    print "Case ##{i+1}: #{res.join().delete("\n")}\n"
  end
end
