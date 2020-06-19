require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |element|
    if element["status"] == "Winner"
      return element["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, season_data|
    season_data.each do |element|
      if element["occupation"] == occupation
        return element["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, season_data|
    season_data.each do |element|
      if element["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, season_data|
    season_data.each do |element|
      if element["hometown"] == hometown
        return element["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  numerator = 0.0
  divisor = 0.0
  data[season].collect do |element|
    numerator += element["age"].to_i
    divisor +=1
  end
  mean  = numerator / divisor
  mean.round
end

# This method did not work for some reason -> NoMethodError: undefined method `sum' for #<Array: 0x0000....>

#def get_average_age_for_season(data, season)
#  list = data[season].collect { |element| element["age"].to_i }
#  mean  = list.sum / list.length
#end
