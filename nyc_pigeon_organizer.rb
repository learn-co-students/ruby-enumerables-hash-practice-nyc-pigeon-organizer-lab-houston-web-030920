require 'pp'

def pigeon_hash(data)
  list = {}
  data.each do |key,value|
    value.each do |k,v|
      v.each do |name|
        if list[name][key]
          list[name][key] << k.to_s
        else
          list[name] = {key => [k.to_s]}
        end
        pp list
      end
    end
  end
end


def nyc_pigeon_organizer(data)
  pigeon_hash(data)
end
