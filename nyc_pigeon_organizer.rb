def nyc_pigeon_organizer(data)
  new_hash={}
  data[:gender].each do |gender,pigeons|
    pigeons.each do |pigeon|
      new_hash[pigeon]= {:color=>[],:gender=>[gender.to_s],:lives=>[]}
    end
  end
  data[:color].each do |color,pigeons|
    pigeons.each do |pigeon|
      new_hash[pigeon][:color]<<color.to_s
    end
  end
  data[:lives].each do |place, pigeons|
    pigeons.each do |pigeon|
      new_hash[pigeon][:lives]<<place.to_s
    end
  end
  new_hash
end
