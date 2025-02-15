# require 'csv'

require './lib/stat_tracker'

game_path = './data/games.csv'
team_path = './data/teams.csv'
game_teams_path = './data/game_teams.csv'

locations = {
  games: game_path,
  teams: team_path,
  game_teams: game_teams_path
}

stat_tracker = StatTracker.from_csv(locations)

p stat_tracker.highest_total_score
p stat_tracker.lowest_total_score
p stat_tracker.percentage_ties
p stat_tracker.best_offense
p stat_tracker.winningest_coach("20132014")