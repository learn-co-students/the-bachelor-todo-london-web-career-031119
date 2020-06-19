require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each { |person_hash|
    if person_hash["status"] == "Winner"
      return person_hash["name"].split[0]
    end
  }
end

def get_contestant_name(data, occupation)
  data.each { |season, person_array|
    person_array.each { |person_hash|
      if person_hash["occupation"] == occupation
        return person_hash["name"]
      end
    }

  }
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each { |season, person_array|
    person_array.each { |person_hash|
      if person_hash["hometown"] == hometown
        counter += 1
      end
    }

  }

  counter

end

def get_occupation(data, hometown)
  data.each { |season, person_array|
    person_array.each { |person_hash|
      if person_hash["hometown"] == hometown
        return person_hash["occupation"]
      end
    }

  }
end

def get_average_age_for_season(data, season)

  sum_of_ages = 0

  data[season].each { |person_hash|
    sum_of_ages += person_hash["age"].to_i
  }

  (sum_of_ages / data[season].size.to_f).round
end
