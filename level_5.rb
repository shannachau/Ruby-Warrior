class Player
  def play_turn(warrior)
    if @health == nil
      @health = warrior.health
    end

    if warrior.feel.empty? == false
      if warrior.feel.captive?
        warrior.rescue!
      else
        warrior.attack!
      end
    elsif warrior.feel.empty? == true
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
