require 'tictactoe-game'
require "test/unit"


#Test que comprueba si se calcula el radio de una circunferencia correctamente.
class TestCalculoRadio < Test::Unit::TestCase

	def test_NumPos
		assert_equal(4/(2*Math::PI),Circunferencia.new(4).radio)
	end

end
