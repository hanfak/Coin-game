class Coin
  
  attr_reader :winning_flip

  @@coin_value = ["HEADS", "TAILS"]
  
  def initialize
    rand_num = [0,1].sample
    @winning_flip = @@coin_value[rand_num]
  end

end

