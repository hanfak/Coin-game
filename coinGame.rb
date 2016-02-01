load 'coin.rb'
load 'player.rb'

  class CoinGame

    attr_reader :player

    def initialize (player_1_name, player_2_name)
      @player = []
      @player[0] = Player.new(player_1_name)
      @player[1] = Player.new(player_2_name)
    end 

    def start_game
      #Which player to pick first
      rand_index = [0,1].sample
      first_player = player[rand_index]
      puts "Deciding who goes first"
      print "#{first_player.name} please "

      #first player picks face
      first_player_pick = first_player.first_coin_option

      #Second player choosen and given other side
      opponents_index = rand_index ==  0 ? 1 : 0 
      second_player = player[opponents_index]
      second_player_pick = second_player.coin_option(first_player_pick)

      #Result from flipping a coin
      winning_flip = Coin.new.winning_flip
     
      #Who won and lost
      first_player.did_player_win?(first_player_pick, winning_flip)
      second_player.did_player_win?(second_player_pick, winning_flip)

    end
  end 
