class Player
  def play_turn(warrior)
    if @health == nil
      @health = warrior.health
    end

    if warrior.feel.empty? == false
      warrior.attack!
    else
      if warrior.health < 20
        if warrior.health < @health
          warrior.walk!
        else
          warrior.rest!
        end
      else
        warrior.walk!
      end
    end

    @health = warrior.health
  end
end
