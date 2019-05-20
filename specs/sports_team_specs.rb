require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = "Brechin Basketball"
    @players = ['Mike', 'Dave', 'Gary', 'Aaron', 'Kev']
    @coach = "Nel"
  end


  def test_team_name
    brechin_bball_team = Team.new( @team, @players, @coach )
    assert_equal("Brechin Basketball", brechin_bball_team.team_name)
  end

  def test_players_array
    brechin_bball_team = Team.new( @team, @players, @coach )
    assert_equal(['Mike', 'Dave', 'Gary', 'Aaron', 'Kev'], brechin_bball_team.players_array)
  end

  def test_coach_name
    brechin_bball_team = Team.new( @team, @players, @coach )
    assert_equal("Nel", brechin_bball_team.coach_name)
  end

  def test_set_coach
    brechin_bball_team = Team.new( @team, @players, @coach)
    brechin_bball_team.coach_name = 'Nel Andrews'
    assert_equal('Nel Andrews', brechin_bball_team.coach_name)
  end

  def test_add_player
    brechin_bball_team = Team.new( @team, @players, @coach)
    brechin_bball_team.add_player('Euan')
    team_array_length = brechin_bball_team.players_array.length
    assert_equal(6, team_array_length)
  end

# Add a method that takes in a string of a player's name and checks to see if they are in the players array.

  def test_player_exists_true
    brechin_bball_team = Team.new( @team, @players, @coach)
    assert_equal(true, brechin_bball_team.player_exists('Mike'))
  end

  def test_player_exists_false
    brechin_bball_team = Team.new( @team, @players, @coach)
    assert_equal(false, brechin_bball_team.player_exists('Stovie'))
  end

# Add a points property into your class that starts at 0.

def test_points_init
  brechin_bball_team = Team.new( @team, @players, @coach )
  assert_equal(0, brechin_bball_team.team_points)
end

# Create a method that takes in whether the team has won or lost and updates the points property for a win.
def test_points_update_after_win
    brechin_bball_team = Team.new( @team, @players, @coach )
    brechin_bball_team.points_update('win')
    assert_equal(2, brechin_bball_team.team_points)
end

def test_points_update_after_loss
    brechin_bball_team = Team.new( @team, @players, @coach )
    brechin_bball_team.points_update('loss')
    assert_equal(0, brechin_bball_team.team_points)
end

def test_points_update_gibberish
    brechin_bball_team = Team.new( @team, @players, @coach )
    brechin_bball_team.points_update([10,'cake'])
    assert_equal(0, brechin_bball_team.team_points)
end

end
