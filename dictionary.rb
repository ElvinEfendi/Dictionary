dict = {"car"=>"Car is a thing that have 4 wehicels"}
exit=false
while !exit
  print "Please enter a word: "
  key = gets.chomp
  if dict.has_key?(key)
    puts dict[key]
  else
    print "Sorry, not found. Add to Dictionary? (y/n): "
    add = gets.chomp
    if add=="y"
      print "Please, enter decription for #{key}: "
      value = gets.chomp
      dict[key]=value
    end #adding new word
  end #looking for word
  
  print "Exit? (y/n): "
  answ = gets.chomp
  if answ=="y"
    exit=true
  end #exit
end
  