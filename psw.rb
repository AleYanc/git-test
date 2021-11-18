
dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def get_city_names(somehash)
  somehash.keys
end

def get_area_code(somehash, key)
  somehash[key]
end

#Execution flow
loop do 
  puts "Do you want to look up an area code based on city name? (Y/N)"
  answer = gets.chomp
  break if answer != "y"
  puts "Wich city do you want to loop up the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  prompt = gets.chomp
  if dial_book.include?(prompt)
    puts "The are code from #{prompt} is: #{get_area_code(dial_book, prompt)}"
  else 
    puts "You have entered an invalid city name"
  end
end