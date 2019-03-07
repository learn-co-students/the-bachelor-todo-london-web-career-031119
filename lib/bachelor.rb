require 'pry'
data =
{
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation": "Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana", #>"
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado", #>
      "occupation": "Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}

def get_first_name_of_season_winner(data,season)
season_winner = data["#{season}"].each do |x|
  if x["status"] == "Winner"
    first_name = x["name"].split(" ").shift
    return first_name
end
end
end

#Build a method, get_contestant_name, that takes in the data hash and an occupation string
#and returns the name of the woman who has that occupation.
def get_contestant_name(data, occupation)
contestant_name = data.each do |season,contestant|
  #binding.pry
contestant.each do |x|
  #binding.pry
  if x["occupation"] == occupation
    name = x["name"]
    return name
  end
end
end
end




def count_contestants_by_hometown(data, hometown)
   contestants_from_hometown = 0
  data.each do |season,contestant|
    #binding.pry
  contestant.each do |x|
    #binding.pry
    if x["hometown"] == hometown
      contestants_from_hometown+=1
      #binding.pry
    end
  end
  end
  contestants_from_hometown
  #binding.pry
end

=begin
Build a method get_occupation, that takes in two arguments––the data hash and a string of a hometown.
It returns the occupation of the first contestant who hails from that hometown.
=end
def get_occupation(data, hometown)

 data.each do |season,contestant|
   #binding.pry
 contestant.each do |x|
   #binding.pry
   if x["hometown"] == hometown
     r = x["occupation"]
     return r
     #binding.pry
   end
   end
 end
end

=begin
How will you collect the ages of
each contestant and average them? Remember that the values of the "age" keys are not numbers, they are strings. How do we convert strings to numbers in Ruby?
Remember that dividing integers in Ruby always rounds down.
In this case though, we want the normal math sort of rounding (where .5 and higher rounds up),
instead. Consider the difference between to_f and to_i.
=end

def get_average_age_for_season(data, season)
  array_of_ages_within_season = []
  data["#{season}"].each do |x|
    array_of_ages_within_season<<x["age"].to_i #> " NUMBER"
  end
 average_age = (array_of_ages_within_season.reduce(:+)/array_of_ages_within_season.size.to_f).round
end
#>iterates through the hash and returns the average age
#get_average_age_for_season(data,"season 10")


#binding.pry

=begin
method one arr.sum.to_f / arr.size
method two arr.reduce(:+)/arr.size.to_f  #> reduce , reduces an array into a single array
method three
=end
