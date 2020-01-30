

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

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

def move(board , index,token)
  board[index] = token
end

def position_taken?(board , index)
     board[index]!=" "
end

def valid_move?(board,index)
  !position_taken?(board) && index.between?(0,8)
end

def turn(board)
    puts "Enter a number between 1 and 9 "
    index = input_to_index gets.to_i
    if valid_move?(board,index)
      move(board,index,turn_count(board)%2==0?"X":"O")
      display_board(board)
    else
      turn(board)
    end
end

def turn_count(board)
  count = 0 
  board.each do |cell|
    count +=1 if cell!=" "
  end
  count
end



