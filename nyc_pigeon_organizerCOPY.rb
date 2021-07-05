require 'pp'

def pigeon_hash(data)
  list = {}
  data.each do |key,value|
    value.each do |k,v|
      pp k
      v.each do |name|
        list[name] = {key => []}
      end
    end
  end
  pp list
end


def nyc_pigeon_organizer(data)
  pigeon_hash(data)
end
