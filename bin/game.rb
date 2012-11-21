require 'tictactoe-game'

  if ARGV.size > 0 and ARGV[0] == "-d"
    game = TicTacToe::Game.new TicTacToe::HumanPlayer,
                   TicTacToe::DumbPlayer
  else
    game = TicTacToe::Game.new TicTacToe::HumanPlayer,
                   TicTacToe::SmartPlayer
  end
  game.play
