def get_first_name_of_season_winner(data, season)
  data.each do |seasons, info|
   if seasons == season
    info.each do |info|
      
      if info["status"] == "Winner"
        return info["name"].split(" ")[0]
      end
    end
    end 
  end 
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |info|
    if info["occupation"] == occupation
      return info["name"]
    end
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  number = []
 data.each do |season, info|
  info.each do |info|
     if info["hometown"] == hometown
       number.push(info["hometown"])
   end
   end 
   end
   return number.length
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |seasons, info|
    if seasons == season
    info.each do |info|
      ages.push(info["age"].to_i)
    end 
  end 
end 
av = ages.inject(0){|sum, x| sum + x}/ages.length.round

end
