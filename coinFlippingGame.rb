#https://www.youtube.com/watch?v=1BVXQ64wI00&list=PLGLfVvz_LVvS5P7khyR4xDp7T9lCk9PgE&index=2

load 'coinGame.rb'

class CoinFlippingGame

  puts "Enter player one name"
  player_1 = gets.chomp
  puts "Enter player two name"
  player_2 = gets.chomp

  begin
    CoinGame.new(player_1, player_2).start_game
    puts "\nGame over"
    puts "\nPlay again, type y or Y then enter"
    users_answer = gets.chomp
  end while users_answer == "y" || users_answer == "Y"

end

#CoinFlippingGame.new