require 'pry'

def get_first_name_of_season_winner(data, season)
  # data is ths JSON
  # data[:"season 18"][0][:status] == "Winner" #returns true
  # winner_full_name = data[:"season 18"][0][:name] #returns full name
  # first_name_only = winner_full_name.slice(0..(winner_full_name.index(' ')-1))
  winner_full_name = ""
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner_full_name = contestant["name"]
    end
  end
  winner_full_name.slice(0..(winner_full_name.index(' ')-1))
end

def all_contestants(data)
  data.values.flatten
end#returns an array of all contestants' hashes

def find_hometown(data, hometown)
  all_contestants(data).select {|hash| hash["hometown"] == hometown}
end #returns an ARRAY of hashes, hashes are contestants from that hometown # returns [{matched},{matched}]

def get_contestant_name(data, occupation)
  all_contestants(data).find {|hash| hash["occupation"] == occupation}["name"]
end

def count_contestants_by_hometown(data, hometown)
  find_hometown(data,hometown).length
end

def get_occupation(data, hometown)
  find_hometown(data,hometown)[0]["occupation"]
end

def all_age(data,season)
  ages_str = data[season].collect {|hash| hash["age"]} #array of ages
  ages_str.collect {|str| str.to_i} #array of ages as integers
end

def get_average_age_for_season(data, season)
  #create array of hashes of that season
  #.collect the value of "age"
  age_sum = all_age(data,season).inject {|sum, n| sum + n}.to_f
  no_of_people = all_age(data,season).size.to_f
  (age_sum/no_of_people).round
end
