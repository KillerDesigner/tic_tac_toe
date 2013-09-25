# Draw a game board using pipes (|) and dashes (-) 
# that looks like this:

#  1 | 2 | 3
# -----------
#  4 | 5 | 6
# -----------
#  7 | 8 | 9

def tic_tac_toe
  
  print_big                                                                                                                    
	                                                                                                                                                              
	game_board = "\n 1 | 2 | 3 \n ---------- \n 4 | 5 | 6 \n ---------- \n 7 | 8 | 9 \n"
	puts game_board
	@num_plays = 0
	@won = false
	exes = []
	ohs = []

	while ( @num_plays < 9 && @won != true )
		game_board = take_turn(game_board,'X')
		
		exes = game_board.scan("X")
		if( exes.length >= 3 )
		  puts string_checker_rec(game_board, 'X', 0).to_s
		end
		p exes

		game_board = take_turn(game_board,'O')

	  ohs = game_board.scan("O")
	  p ohs

	end
end

def string_checker(my_board, char)
  num1 = my_board.index(char)
  p num1
  num2 = my_board.rindex(char)
  p num2
end

def string_checker_rec(board_str, char, start_index)
	char_index = board_str.index(char, start_index)

	return [] if char_index.nil?

	return string_checker_rec(board_str, char, char_index + 1) << char_index
end

def take_turn(my_board, char)
  puts "#{char}: what is your move? please enter a number."
  move = gets.chomp
	my_board = my_board.split(move).join(char)
	puts my_board
	@num_plays += 1
	return my_board
end

def print_big
	 puts " ##### #  ####        #####   ##    ####        #####  ####  ###### "
	 puts "  #   # #    #         #    #  #  #    #         #   #    # #      "
	 puts "  #   # #      #####   #   #    # #      #####   #   #    # #####  "
	 puts "  #   # #              #   ###### #              #   #    # #      "
	 puts "  #   # #    #         #   #    # #    #         #   #    # #      "
	 puts "  #   #  ####          #   #    #  ####          #    ####  ###### "
end

	                   
