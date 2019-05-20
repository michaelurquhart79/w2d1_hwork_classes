class Team
  attr_reader(:team_name, :players_array, :team_points)
  attr_accessor(:coach_name)

  def initialize(team_name, players_array, coach_name)
    @team_name = team_name
    @players_array = players_array
    @coach_name = coach_name
    @team_points = 0
  end

  def add_player(new_player)
    @players_array.push(new_player)
  end

  def player_exists(name_to_check)
    for player in @players_array
      if player == name_to_check
        return true
      end
    end
    return false
  end

  def points_update(result)
    if result == 'win'
      @team_points += 2
    end
  end

  # def team_name
  #   return @team_name
  # end

  # def players_array
  #   return @players_array
  # end

  # def coach_name
  #   return @coach_name
  # end
  #
  # def set_coach(new_coach)
  #   @coach_name = new_coach
  # end

end
