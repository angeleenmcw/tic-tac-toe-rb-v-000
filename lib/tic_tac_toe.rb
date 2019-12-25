WIN_COMBINATIONS = [
  [0,1,2], 
  [3,4,5],
  [6,7,8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6] 

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index
  input.to_i -1
end

def move (board, position, token)
  board(position) = token
end

def position_taken?(board, position)
  board(position)= "X" || board(position) = "O"
end

def valid_move?(board, position)
  board(position).between(0,8) && position_taken?(board, position)
end

def turn(board)
  puts "Choose a position (1-9)"
  position = input_to_index
  

  

board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
display_board(board)

over do 
  board