nb_test_case = gets.to_i

nb_test_case.times do |i|
  nb_elt_list = gets.to_i
  line = gets.split
  res = 0

  pivot = line[0]
  (nb_elt_list -1).times do |k|
    tmp_nb = line[k+1]
    if(pivot < tmp_nb)
      pivot = tmp_nb
    else
      tmp_nb_in_str = tmp_nb.to_s
      pivot_in_str = pivot.to_s
      if(tmp_nb_in_str.size === pivot_in_str.size)
        if("#{tmp_nb_in_str}0".to_i > pivot)
          res =+1
        end
      elsif (tmp_nb_in_str.size > pivot_in_str)

      end
    end
  end

  print "Case ##{i+1}: \n"
end
