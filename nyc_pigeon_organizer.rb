def nyc_pigeon_organizer(data)
  final_hash = {}
  data.each do |key, value|
    value.each do |values, names|
      names.each do |name|
        if final_hash[name] == final_hash
          final_hash[name]
        end
      end
    end
  end
  final_hash
end
