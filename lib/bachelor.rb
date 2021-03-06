def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner << contestant["name"]
    end
  end
  return winner.split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        name << contestant_hash["name"]
      end
    end
  end
  return name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  contestants_from_hometown = []
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        contestants_from_hometown.push(contestant_hash["name"])
      end
    end
  end
  return contestants_from_hometown.length
end

def get_occupation(data, hometown)
  # code here
  occupation = []
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        occupation << contestant_hash["occupation"]
      end
    end
  end
  return occupation[0]
end

def get_average_age_for_season(data, season)
  # code here
  ages = 0
  contestants_per_season = 0
  data[season].each do |contestants|
    ages += contestants["age"].to_i
    contestants_per_season += 1
  end
  
  (ages / contestants_per_season.to_f).round(0)
    
end
