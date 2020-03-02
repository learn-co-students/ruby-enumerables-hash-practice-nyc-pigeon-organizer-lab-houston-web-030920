require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  
  #create an inner hash that takes color, gender, lives as keys and an array as value
  inner_hash = Hash.new 
  hash_names = data.keys
  hash_names.each do |key|
    inner_hash[key] = []
  end 
  
  # get all names from gender in data into an aoa
  name_array = []
  data[:gender].each do |gender_key, gender_key_value|
    name_array << gender_key_value
  end
  
  #flatten name_array aoa
  name_array_flatten = name_array.flatten
  
  # set up pigeon_list with keys and values
  name_array_flatten.each do |name_key|
    pigeon_list[name_key] = inner_hash
  end 
  
  male = data[:gender][:male]
  female = data[:gender][:female]
  
  # pigeon_list.map do |k,v|
  #   if !male.include? k 
  #     pigeon_list[k][:gender].push("male")
  #     break
  #   end
  # end
  
  pigeon_list
end
