class Player
   
  attr_reader :coin_option, :name 
  
  @@coin_value = ["HEADS", "TAILS"]

  def initialize name
    @name = name
  end

  #picks number for first player choosen
  def first_coin_option 
    puts "enter \"heads\" for heads or \"tails\" for tails "
    choice = gets.chomp
    index =  choice == "heads" ? 0 : 1
    @@coin_value[index]
  end

  #picks face for second player
  def coin_option ( opponent_flip )
    @coin_option = (opponent_flip == "HEADS") ? "TAILS" : "HEADS"
  end

  def did_player_win? (choosen_pick, winning_flip)
    if choosen_pick == winning_flip 
      puts "#{name} won with a flip of #{choosen_pick}"
    else
      puts "#{name} lost with a flip of #{choosen_pick}"
    end
  end

end