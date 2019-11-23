def turn(board) 

puts "Please enter 1-9:"
display_board(board)
input = gets.strip
index = input_to_index(input)

if valid_move?(board, index)
  move(board, index)
  display_board(board)
elsif valid_move?(board, index) == false
  input = gets.strip
  index = input_to_index(input)
  display_board(board)
end

# if valid_move?(board, index)
# display_board(board)
# end

end



def move(board, index, value = "X")
  board[index]  = value
  
end


def valid_move?(board, index)
  if index>9
    valid_move = false
  elsif index<0
    valid_move = false
  elsif position_taken?(board, index) == true
    valid_move = false
  elsif position_taken?(board, index) == false
    valid_move = true
end
end


def position_taken?(board, index)
  index.to_i
  if board[index] == "" || board[index] == " " || board[index] == nil
    position_taken = false 
    elsif board[index] == "X" || board[index] == "O"
    position_taken = true
  else position_taken = false 
    end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  input.to_i-1
end