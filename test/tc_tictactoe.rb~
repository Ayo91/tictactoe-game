require 'tictactoe-game'
require "test/unit"


#Test que comprueba si se calcula el radio de una circunferencia correctamente.
class TestTictactoe < Test::Unit::TestCase

	#ejecutar antes de cada test
	def setup
		@board = TicTacToe::Board.new([" "] * 9)
	end

#-------------------------------------------------------------------------------   
	def test_MovimientosValidos
		assert(@board.moves.include?("a1"))
		assert(@board.moves.include?("a2"))
		assert(@board.moves.include?("a3"))
		assert(@board.moves.include?("b1"))
		assert(@board.moves.include?("b2"))
		assert(@board.moves.include?("b3"))
		assert(@board.moves.include?("c1"))
		assert(@board.moves.include?("c2"))
		assert(@board.moves.include?("c3"))
	end

#-------------------------------------------------------------------------------   
	def test_MovimientosInvalidos
		assert(!@board.moves.include?("a5"))
		assert(!@board.moves.include?("d2"))
		assert(!@board.moves.include?("e3"))
		assert(!@board.moves.include?("e8"))
	end



#-------------------------------------------------------------------------------   
	def test_JugadaCorrectaJugador
      @x_player = TicTacToe::Player.new("X")   
		@board["a1"] = @x_player.mark
		assert_equal(@board["a1"], "X")
	end



#-------------------------------------------------------------------------------   
	def test_PartidaGanadaFila
		@board["a1"] = "X"
		@board["a2"] = "X"
		@board["a3"] = "X"
		assert_equal(@board.won?, "X")
	end

#-------------------------------------------------------------------------------   
	def test_PartidaGanadaDiagonal
		@board["a1"] = "O"
		@board["b2"] = "O"
		@board["c3"] = "O"
		assert_equal(@board.won?, "O")
	end


#-------------------------------------------------------------------------------   
	def test_PartidaGanadaColumna
		@board["a1"] = "O"
		@board["b1"] = "O"
		@board["c1"] = "O"
		assert_equal(@board.won?, "O")
	end



#-------------------------------------------------------------------------------   
	def test_empate
		@board["a1"] = "O"
		@board["a2"] = "O"
		@board["a3"] = "X"
		@board["b1"] = "X"
		@board["b2"] = "O"
		@board["b3"] = "O"
		@board["c1"] = "O"
		@board["c2"] = "X"
		@board["c3"] = "O"
		assert_equal(@board.won?, "O")
	end


#-------------------------------------------------------------------------------   
  def test_HumanoXGanaPartida
      @x_player = TicTacToe::HumanPlayer.new("X")
		@board["a1"] = "X"
		@board["a2"] = "X"
		@board["a3"] = "X"   
		assert_equal(@x_player.finish_pruebas(@board), "Congratulations, you win.\n\n")
   end



#-------------------------------------------------------------------------------   
  def test_HumanoPierdePartida
      @x_player = TicTacToe::HumanPlayer.new("O")
		@board["a1"] = "X"
		@board["b1"] = "O"
		@board["a2"] = "X"
		@board["b2"] = "O"
		@board["a3"] = "X"
		assert_equal(@x_player.finish_pruebas(@board), "You lost tic-tac-toe?!\n\n")
   end



#-------------------------------------------------------------------------------   
	def test_SmartPlayertCorrectaJugadaGanar
      @x_player = TicTacToe::SmartPlayer.new("O")
		@board["a1"] = "O"
		@board["a3"] = "X"
		@board["c1"] = "O"
		@board["b2"] = "X"
		@board["a2"] = "O"
		@board["b3"] = "X"
		assert_equal(@x_player.move(@board), "b1")
   end


#-------------------------------------------------------------------------------   
	def test_SmartPlayertDefensaEsquina
      @x_player = TicTacToe::SmartPlayer.new("O")
		@board["a3"] = "X"
		@board["b2"] = "O"
		assert_equal(@x_player.move(@board), "c1")
   end




end
