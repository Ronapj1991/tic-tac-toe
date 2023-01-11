module Game
  class Player
    attr_reader :name, :symbol
    def initialize(name, symbol)
      @name = name
      @symbol = symbol
    end

    def switch(player1, player2, currentPlayer)
      if (currentPlayer.eql?(player1))
        currentPlayer = player2
      else
        currentPlayer = player1
      end
    end
  end

  class Board
    def initialize
      @squares = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end
  
    def displayBoard
      puts  %{
        #{@squares[0]}  |  #{@squares[1]}  |  #{@squares[2]}  
        #{@squares[3]}  |  #{@squares[4]}  |  #{@squares[5]}
        #{@squares[6]}  |  #{@squares[7]}  |  #{@squares[8]}
      }
      
    end
  
    def put_mark(square, mark)
      @squares[square] = mark
    end
  
    def is_board_full?
      !@squares.any?(" ")
    end
  end

  p1 = Player.new("P1", "X")
  p2 = Player.new("P2", "O")
  board = Board.new()

  currentPlayer = p1
  loop do
    puts "Mark a square"
    userInput = (gets.chomp).to_i
    board.put_mark(userInput, currentPlayer.symbol)
    board.displayBoard
    currentPlayer = currentPlayer.switch(p1, p2, currentPlayer)
  end
end

# #check for wins
# #what are wins 
# # 012, 048, 036, 147, 246, 258, 345, 678