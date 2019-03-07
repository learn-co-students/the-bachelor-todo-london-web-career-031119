require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |sea, person|
    if sea == season
      person.each do |item|
        if item["status"] == "Winner"
          return item["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |key, value|
    value.each do |person|
      if person["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |key, value|
    value.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  count = 0
  data.each do |sea, person|
    if sea == season
      person.each do |item|
        sum += item["age"].to_i
        count += 1
      end
    end
  end
  return (sum.to_f / count).round
end
