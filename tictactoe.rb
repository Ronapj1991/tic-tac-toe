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
    
  def put_mark(square, mark)
    @squares[square] = mark
  end
end

test = Board.new()
puts test.displayBoard

# change the values on the board
test.put_mark(1, "X")
puts test.displayBoard