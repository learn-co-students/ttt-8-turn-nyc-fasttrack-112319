


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if
    index.between(0,8) && !position_taken?(board, index)
  end
end

def position_taken?(board, index)
  board[index] != " "
end
#position_taken

#move
def turn(board)
  puts "please enter 1-9:"







  # get input
  # convert input to index
  # if index is valid
  #   make the move for input
  # else
  #   ask for input again until you get a valid input
  # end
