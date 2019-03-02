require "pry"


def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data.each do |seas, people|
    if seas == season
      # binding.pry
      people.each do |key|
        # binding.pry
        if key["status"] == "Winner"
          winner << key["name"].split(" ")[0]
          # binding.pry
        end
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  w = ""
  data.each do |season_num, attribute|
      attribute.each do |key|
        if key["occupation"] == occupation
          w << key["name"]
      end
    end
  end
  w
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_num, attribute|
    attribute.each do |key|
      if key["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  job = ""
  data.each do |season_num, attribute|
    attribute.find do |key|
      if key["hometown"] == hometown
        job << key["occupation"]
      end
    end
  end
  job
end

def get_average_age_for_season(data, season)
  # code here
  num_cont = 0
  total = 0
  data.each do |season_num, attribute|
    # binding.pry
    if season_num == season
      attribute.each do |key|
        num_cont += 1
        total += key["age"].to_i
        # binding.pry
      end
    end
  end
  average = total.to_f / num_cont.to_f
  average.round
  # binding.pry
end
