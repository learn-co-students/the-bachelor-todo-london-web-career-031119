

require 'pry'

def get_first_name_of_season_winner(data, season)
  num = 0
  while num < data[season].length
    if data[season][num]["status"] == "Winner"
      win = data[season][num]["name"]
      num =+ 1
          else
      num += 1
end
end
 win.split[0]
end

# get_first_name_of_season_winner(data1, "season 19")



def get_contestant_name(data, occupation)
  win = ""
  data.each do |one, two|
    two.each do |three, four|
    if three["occupation"] == occupation
      win = three["name"]
  #binding.pry
end
end
end
win
end


def count_contestants_by_hometown(data, hometown)
count = 0
data.each do |one, two|
  two.each do |three, four|
  if three["hometown"] == hometown
    count += 1
end
end
end
count
end


def get_occupation(data, hometown)
  win = ""
  data.each do |one, two|
    two.each do |three, four|
    if three["hometown"] == hometown
      win = three["occupation"]
  break
end
end
end
win
end

def get_average_age_for_season(data, season)
  num = 0
  total = 0.0
  age = 0
  while num < data[season].length
    age = data[season][num]["age"]
    total += age.to_f
          num += 1
      end
      sum = (total / data[season].length)
      sum.round
            end
