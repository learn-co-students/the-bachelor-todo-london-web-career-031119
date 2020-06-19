require 'pry'

def get_first_name_of_season_winner(data, season)
winner = ""
    data.each do |seasons, attributes|
      if seasons == season
        attributes.each do |people|
        puts "#{people}"
          if people["status"] == "Winner"
            winner = people["name"].split(" ").first
          end
        end
      end
    end
   winner
end 


def get_contestant_name(data, occupation)
  # code here
  winner = ""
  data.each do |season, attributes|
    attributes.each do |people|
      if people["occupation"] == occupation
      winner = people["name"]
      end
    end
  end
  winner
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, attributes|
    attributes.each do |people|
      if people["hometown"] == hometown
      count += 1
      end
    end
  end
  count
end


def get_occupation(data, hometown)
  # code here
  occupation = nil 
  data.each do |season, attributes|
    search = attributes.find do |people|
        people["hometown"] == hometown
        end
          if !search
          else occupation = search["occupation"]
        end
    end
  occupation
end



def get_average_age_for_season(data, season)
  # initial solution, failed on one test, couldn't solve it 
  # ages = 0
  # avg_age = 0
  # persons_number = data[season].length
  # data.each do |seasons, attributes|
  #   if seasons == season
  #     attributes.collect do |people|
  #       ages += people["age"].to_i
  #     end
  #   end
  # end
  # avg_age = (ages / persons_number).round
  
  # solution with help of people
  ages = data[season].collect do |people|
      people["age"].to_i
    end 
    
  total_ages = ages.reduce(0){|sum, age| sum += age}
  persons_number = ages.count.to_f 
  
  (total_ages / persons_number).round
  
end

