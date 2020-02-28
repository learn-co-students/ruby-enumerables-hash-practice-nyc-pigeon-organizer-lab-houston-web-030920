require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  
  #create an inner hash that takes color, gender, lives as keys and an array as value
  inner_hash = Hash.new 
  hash_names = data.keys
  hash_names.each do |key|
    inner_hash[key] = []
  end 
  
  binding.pry
  
  data[:color].reduce do ||
    
    
  end 
  
  pigeon_list
end
