dict = {"car"=>"A car is a vehicle with 4 wheels"} #init hash
exit=false #exit flag

puts 'Welcome to the self-learning dictionary!' #Welcome user

while !exit
  print "Please enter a word: "
  key = gets.chomp #get word
  if dict.has_key?(key) #look for word
    puts dict[key]
  else #inform user and allow to add new word
    print "Sorry, not found. Add to Dictionary? (y / n): "
    add = gets.chomp #user's choice
    if add == "y"
      puts "Please, enter decription for #{key}: "
      value = gets.chomp #get description for new word
      dict[key]=value #add (word, desc) pair to the dictionary
    end #add new word
  end #look for word
  #following code part is additional to the assignment :)
  print "Continue? (y/n): "
  answ = gets.chomp
  if answ=="n"
    exit=true #user want to exit
  end #exit
end
  
