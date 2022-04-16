# ((nb_rows *2) +1).times do |row|
#   ((nb_columns *2) +1).times do |col|
#     if (((row==0) && (col==0)) || ((row ==0) && (col==1)) || (row==1 && col == 0))
#         print "."
#     elsif((row % ((nb_rows*2)+1)).odd?)
#         if ((col % ((nb_columns *2) +1)).odd?)
#             print "."
#         elsif ((col % ((nb_columns *2) +1)) == (nb_columns *2))
#             print("|\n")
#         else
#             print("|")
#         end
#     elsif((row % ((nb_rows*2)+1)).even?)
#         if ((col % ((nb_columns *2) +1)).odd?)
#             print("-")
#         elsif ((col % ((nb_columns *2) +1)) == (nb_columns *2))
#             print("+\n")
#         else
#             print("+")
#         end
#     end
#   end
# end
