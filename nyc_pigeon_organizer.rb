def nyc_pigeon_organizer(data)
  # write your code here!

  new_array = {}
  pigeon_names_array = data[:gender][:male] + data[:gender][:female]
  
  pigeon_names_array.each do |name| 
    new_array["#{name}"] = {color: [], gender: [], lives: [] }
    
    data[:color].each do |key, value|
      key_to_string = "#{key}"

      if value.include? name
        new_array["#{name}"][:color].push(key_to_string)
      end

    end

    if data[:gender][:male].include? name
      new_array["#{name}"][:gender].push("male")
    else
      new_array["#{name}"][:gender].push("female")
    end

    if data[:lives]["Subway"].include? name
      new_array["#{name}"][:lives].push("Subway")
    elsif data[:lives]["Central Park"].include? name
      new_array["#{name}"][:lives].push("Central Park")
    elsif data[:lives]["Library"].include? name
      new_array["#{name}"][:lives].push("Library")
    elsif data[:lives]["City Hall"].include? name
      new_array["#{name}"][:lives].push("City Hall")
    end
  
  end
  binding.pry
  return new_array
end

