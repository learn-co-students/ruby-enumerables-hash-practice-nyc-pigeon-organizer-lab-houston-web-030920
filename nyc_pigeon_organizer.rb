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
  data.each do |key,value|
    value.each do |k,v|
      list.each do |pigeon,data|
        arr = []
        if v.include?(pigeon)
          if list[pigeon].key?(key) == false

            arr << k.to_s
            list[pigeon][key] = arr

          else
            list[pigeon][key] << k.to_s
          end
          pp list
        end

      end
    end
  end
  list
end
