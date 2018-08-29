def get_string(prompt)
    puts prompt
    input = gets.chomp
    #chomp removes new line character
    return input
end

player_name = get_string("What's your name?")

puts "Welcome, %s, to McPherson's Mansion!" % [player_name]