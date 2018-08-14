require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, value_hash|
    value_hash.each do |key, value_array|
      value_array.each do |name|
        if new_hash[name].nil?
          new_hash[name] = {}
          new_hash[name][attribute] = [key.to_s]
        elsif new_hash[name][attribute].nil?
          new_hash[name][attribute] = [key.to_s]
        else
          new_hash[name][attribute] << key.to_s
        end
      end
    end
  end
  new_hash
end
