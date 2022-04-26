nb_test_case = gets.to_i

nb_test_case.times do |nb_case|
  nb_pancake = gets.to_i
  line = gets.split.map(&:to_i)
  res = 0

  first_cust = line[0]
  judge_tmp = line[0]
  last_cust = line[line.size - 1]
  prev_val = -1
  itera = line.size

  itera.times do |k|
    if(judge_tmp >= prev_val)
      res += 1
    end

    if (first_cust <= last_cust)
      p = line.shift
      prev_val = p if(judge_tmp >= prev_val)
      judge_tmp = line[0]
    else
      q = line.pop
      prev_val = q if(judge_tmp >= prev_val)
      judge_tmp = line[line.size - 1]
    end

    first_cust = line[0]
    last_cust = line[line.size - 1]
  end

  print "CASE ##{nb_case + 1}: #{res}\n"
end
