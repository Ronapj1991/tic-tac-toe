class Board
  attr_accessor :squares

  def initialize
    @squares = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def displayBoard = "\n" +
    "      #{@squares[0]}  |  #{@squares[1]}  |  #{@squares[2]}  
    -----|-----|-----
      #{@squares[3]}  |  #{@squares[4]}  |  #{@squares[5]}  
    -----|-----|-----
      #{@squares[6]}  |  #{@squares[7]}  |  #{@squares[8]}  " + "\n"
    
  def put_mark(squareNum, mark)
    @squares[squareNum] = mark
  end

  def is_square_marked?(squareNum)
    @squares[squareNum].equal?(" ")
  end
end

#display the board
test = Board.new()
puts test.displayBoard

# change the values on the board
test.put_mark(1, "X")
puts test.displayBoard
puts test.is_square_marked?(0)


#check for wins
#what are wins 
# 012, 048, 036, 147, 246, 258, 345, 678