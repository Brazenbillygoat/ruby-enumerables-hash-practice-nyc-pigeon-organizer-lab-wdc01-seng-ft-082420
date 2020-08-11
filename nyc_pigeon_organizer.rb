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

    data[:lives].each do |key, value|

      if value.include? name
        key_to_string = "#{key}"
        new_array["#{name}"][:lives].push(key_to_string)
      end

    end
  
  end

  return new_array
end

