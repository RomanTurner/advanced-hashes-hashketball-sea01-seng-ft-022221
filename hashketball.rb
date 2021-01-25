# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Both home and away teams
def all_players
all_players = game_hash[:home][:players].concat(game_hash[:away][:players])
end


#searches players for points scored
def num_points_scored player_name
  all_players.each do |player|
      if player[:player_name] == player_name
        return player[:points]
      end
    end
end

def shoe_size player_name
  all_players.each do |player|
      if player[:player_name] == player_name
        return player[:shoe]
      end
    end
end

def team_colors team
if team == brookly_nets
  return game_hash[:home][:colors]
else
  return game_hash[:away][:colors]
end
end

def team_names 
team_names = []
team_names << brookly_nets 
team_names << charlotte_hornets
team_names
end 

def brookly_nets 
  game_hash[:home][:team_name]
end

def charlotte_hornets
  game_hash[:away][:team_name]
end 

def player_numbers team_name 
  numbers = []
  game_hash.each do |team, team_info|
    if team_info[:team_name] == team_name 
     team_info.each do |roster, player|
      if roster == :players
        player.each do |stats|
          numbers.push(stats[:number])
        end 
       end
      end
    end
  end
  numbers   
end


def player_stats player_param
all_players.each do |players|
  if players[:player_name] == player_param
    return players
  end
end
end

def big_shoe_rebounds
  wink_wink = 0
  big_shoes = 0
  big_feet = wink_wink
  all_players.each do |player|
  if player[:shoe] > big_shoes
        big_shoes = player[:shoe]
        big_feet = player[:rebounds]
      end
    end
    big_feet
end 

def most_points_scored 
  most_points = 0
  most_points_player = "Player X"
  all_players.each do |player|
    if player[:points] > most_points
        most_points = player[:points]
        most_points_player = player[:player_name]
      end 
    end
    most_points_player
   puts "#{most_points_player} scored #{most_points} points. The most in the game!"
  end
  
most_points_scored

def winning_team
brooklyn_nets_score  = []
charlotte_hornets_score = []

  game_hash[:home][:players].each do |player, points|
     points = player[:points]
     brooklyn_nets_score << points
end 
game_hash[:away][:players].each do |player, points|
     points = player[:points]
     charlotte_hornets_score << points
end 
brooklyn_nets_score.sum > charlotte_hornets_score.sum ? (puts "The Brooklyn Nets Win!"): (puts "The Charlotte Hornets Win!")
end

winning_team

def long_name_steals_a_ton?
longest_name = "Player X"
long_name_steals = 0
steals = 0
all_players.each do |player|
  if player[:player_name].length > longest_name.length
    longest_name = player[:player_name]
    long_name_steals = player[:steals]
  end 
end
all_players.each do |player|
  if player[:steals] > steals
    steals = player[:steals]
  end 
end 
long_name_steals >= steals ? (puts "The player with the longest name had the most steals.") : (puts "I don't know how this correlates..")
end

long_name_steals_a_ton?