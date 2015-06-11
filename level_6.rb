class Player
  def play_turn(warrior)
    # cool code goes here
    if @health == nil
      @health = warrior.health
    end

    @rescued_captive = false

    if @rescued_captive == false
      if warrior.feel(:backward).captive?
        warrior.rescue!(:backward)
        @rescued_captive = true
      elsif warrior.feel(:backward).wall?
        warrior.walk!
      else
        warrior.walk!(:backward)
      end
    else
      if warrior.feel.empty? == false
        warrior.attack!
      end
        if warrior.health < 20
          if warrior.health < @health
            if warrior.health < 10
              warrior.walk!(:backward)
            end
          else
            warrior.rest!
          end
        else
          warrior.walk!
        end

    end

  end
end
  
