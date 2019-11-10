require_relative 'player_class'
require_relative 'question_class'
require_relative 'start_class'

def start_game
  new = Start.new
  new.ask_q
end

start_game
