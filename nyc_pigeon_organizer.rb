def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  data[:gender].each do |gender, pigeons|
  	pigeons.each do |pigeon|
  		organized_pigeons[pigeon] = {:color =>[], :gender => [gender.to_s], :lives =>[]}
  	end
  end
  data[:color].each do |color, pigeons|
  	pigeons.each do |pigeon|
  		organized_pigeons[pigeon][:color]<<color.to_s
  	end
  end
  data[:lives].each do |lives, pigeons|
  	pigeons.each do |pigeon|
  		organized_pigeons[pigeon][:lives]<<lives.to_s
  	end
  end
  organized_pigeons
end