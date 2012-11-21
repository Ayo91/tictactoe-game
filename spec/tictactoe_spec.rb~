require 'tictactoe-game'

describe TicTacToe do

#-------------------------------------------------------------------------------   
  it "Movimientos válidos del tablero" do
		@board = TicTacToe::Board.new([" "] * 9)
      @board.moves.include?("a1").should == true
      @board.moves.include?("b1").should == true
      @board.moves.include?("c1").should == true
      @board.moves.include?("a2").should == true
      @board.moves.include?("b2").should == true
      @board.moves.include?("c2").should == true
      @board.moves.include?("a3").should == true
      @board.moves.include?("b3").should == true
      @board.moves.include?("c3").should == true
  end	

#-------------------------------------------------------------------------------   
  it "Movimiento tablero inválido" do
		@board = TicTacToe::Board.new([" "] * 9)
      @board.moves.include?("d1").should == false
      @board.moves.include?("a4").should == false
      @board.moves.include?("c5").should == false
  end	


#-------------------------------------------------------------------------------   
  it "Almacenamiento correcto de una jugada de un determinado jugador" do
		@board = TicTacToe::Board.new([" "] * 9)
      @x_player = TicTacToe::Player.new("X")   
		@board["a1"] = @x_player.mark
		@board["a1"].should == "X"
   end




#-------------------------------------------------------------------------------   
  it "Partida ganada jugador X en fila" do
		@board = TicTacToe::Board.new([" "] * 9)
		@board["a1"] = "X"
		@board["a2"] = "X"
		@board["a3"] = "X"
		@board.won?.should == "X"
  end	

#-------------------------------------------------------------------------------   
  it "Partida ganada por jugador 0 en diagonal" do
		@board = TicTacToe::Board.new([" "] * 9)
		@board["a1"] = "O"
		@board["b2"] = "O"
		@board["c3"] = "O"
		@board.won?.should == "O"
  end	


#-------------------------------------------------------------------------------   
  it "Partida ganada por jugador 0 en columna" do
		@board = TicTacToe::Board.new([" "] * 9)
		@board["a1"] = "O"
		@board["b1"] = "O"
		@board["c1"] = "O"
		@board.won?.should == "O"
  end	

#-------------------------------------------------------------------------------   
  it "Empate de partida" do
		@board = TicTacToe::Board.new([" "] * 9)
		@board["a1"] = "O"
		@board["a2"] = "O"
		@board["a3"] = "X"
		@board["b1"] = "X"
		@board["b2"] = "O"
		@board["b3"] = "O"
		@board["c1"] = "O"
		@board["c2"] = "X"
		@board["c3"] = "O"
		@board.won?.should == "O"
  end	


#-------------------------------------------------------------------------------   
  it "Jugador Humano X gana partida" do
		@board = TicTacToe::Board.new([" "] * 9)
      @x_player = TicTacToe::HumanPlayer.new("X")
		@board["a1"] = "X"
		@board["a2"] = "X"
		@board["a3"] = "X"   
		@x_player.finish_pruebas(@board).should == "Congratulations, you win.\n\n"
   end



#-------------------------------------------------------------------------------   
  it "Jugador Humano O pierde partida" do
		@board = TicTacToe::Board.new([" "] * 9)
      @x_player = TicTacToe::HumanPlayer.new("O")
		@board["a1"] = "X"
		@board["b1"] = "O"
		@board["a2"] = "X"
		@board["b2"] = "O"
		@board["a3"] = "X"
		@x_player.finish_pruebas(@board).should == "You lost tic-tac-toe?!\n\n"
   end



#-------------------------------------------------------------------------------   
  it "Comportamiento SmartPlayer correcto  para movimiento ganador" do
		@board = TicTacToe::Board.new([" "] * 9)
      @x_player = TicTacToe::SmartPlayer.new("O")
		@board["a1"] = "O"
		@board["a3"] = "X"
		@board["c1"] = "O"
		@board["b2"] = "X"
		@board["a2"] = "O"
		@board["b3"] = "X"
		@x_player.move(@board).should == "b1"
   end


#-------------------------------------------------------------------------------   
  it "Defensa de esquina correcta SmartPlayer" do
		@board = TicTacToe::Board.new([" "] * 9)
      @x_player = TicTacToe::SmartPlayer.new("O")
		@board["a3"] = "X"
		@board["b2"] = "O"
		@x_player.move(@board).should == "c1"
   end



end
