def get_color_for_a_single_pigeon (data,pigeon)
  colors = data[:color]
  colors_array = []
  colors.each do |key,value| 
    if value.include? (pigeon)
      colors_array.push(key.to_s)
    end
  end
  colors_array
end

def get_gender_for_a_single_pigeon (data, pigeon)
  genders = data[:gender]
  gender_array = []
  genders.each do |key,value|
    if value.include? (pigeon)
    gender_array.push(key.to_s)
    end
  end
  gender_array
end

def get_lives_for_a_single_pigeon (data,pigeon)
  lives = data[:lives]
  lives_array = []
  lives.each do |key,value|
    if value.include? (pigeon)
      lives_array.push(key.to_s)
    end
  end
  lives_array
end 

def nyc_pigeon_organizer(data)
  male = data[:gender][:male]
  female = data[:gender][:female]
  all = [male, female].flatten
  name = {}
  i=0 
  while i<all.count do 
    keyname= all[i]
    name[keyname] = {:color => get_color_for_a_single_pigeon(data,keyname), :gender => get_gender_for_a_single_pigeon(data,keyname), :lives => get_lives_for_a_single_pigeon(data,keyname)}
    i += 1 
  end
  puts name
  name
end 


