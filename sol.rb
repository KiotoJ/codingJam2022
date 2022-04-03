# https://codingcompetitions.withgoogle.com/codejam/round/0000000000876ff1/0000000000a4621b
nb_test_case = gets.to_i

nb_test_case.times do |i|
    line = gets.split
    nb_rows = line[0].to_i
    nb_columns = line[1].to_i

    print "Case ##{i+1}:\n"

    nb_rows.times do |row|
      if(row == 0)
        print "..+"
        print "-+"*(nb_columns - 1)
        print "\n"
        print "."
        print ".|"*nb_columns
        print "\n"
        print "+"
        print "-+"*nb_columns
        print "\n"
      else
        print "|"
        print ".|"*nb_columns
        print "\n"
        print "+"
        print "-+"*nb_columns
        print "\n"
      end
    end
end
