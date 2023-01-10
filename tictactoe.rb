#The board
  # display
  # top left
  # top middle
  # top right
  # mid left
  # mid mid
  # mid right
  # bottom left
  # bottom mid
  # bottom right
=begin
    X  |  X  |  O  
  -----|-----|-----
    X  |  X  |  O  
  -----|-----|-----
    O  |  O  |  X  
  
    this is the sample board
=end

class Board
  def initialize
    @squares = {
      :tl => " ",
      :tm => " ",
      :tr => " ",
      :ml => " ",
      :mm => " ",
      :mr => " ",
      :bl => " ",
      :bm => " ",
      :br => " "
    }

    @board = 
"  #{@squares[:tl]}  |  #{@squares[:tm]}  |  #{@squares[:tr]}  
-----|-----|-----
  #{@squares[:ml]}  |  #{@squares[:mm]}  |  #{@squares[:mr]}  
-----|-----|-----
  #{@squares[:bl]}  |  #{@squares[:bm]}  |  #{@squares[:br]}  "
  end

  def displayBoard
    puts "#{@board}"
  end
end

test = Board.new()
test.displayBoard()

#take player input
# change the values on the board based on player input