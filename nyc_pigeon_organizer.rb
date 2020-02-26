require 'pp'

def name_list(data)
  list = {}
  data.each do |key,value|
    value.each do |k,v|
      v.each do |name|
        list[name] = {}
      end
    end
  end
list
end


def nyc_pigeon_organizer(data)
  list = name_list(data)
  new_list = {}
  data.each do |key,value|
    value.each do |k,v|
      list.each do |pigeon,data|
        arr = []
        if v.include?(pigeon)
          p "I have found #{pigeon} in this array with this key:value"
          pp k,v
          p "The array they should be returning is this simplified"
          pp arr << k.to_s
          new_list[pigeon] = {key => arr}
        end

      end
    end
  end
end
