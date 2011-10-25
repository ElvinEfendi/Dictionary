dict = {"car"=>"A car is a vehicle with 4 wheels"} #init hash
puts 'Welcome to the self-learning dictionary!'    #Welcome user

while true
  print "Please enter a word: "
  key = gets.chomp.downcase                        #get word then clean and lowercase it
  if dict.has_key?(key)                            #look for word
    puts dict[key]
  else                                             #inform user and allow to add new word
    print "Sorry, not found."
    print " Add to Dictionary? (y / n): "
    add = gets.chomp.downcase                      #user's choice
    if add == "y"                                  #add new word
      puts "Please, enter decription for #{key}: "
      value = gets.chomp                           #get description for new word
      dict[key]=value                              #add (word, desc) pair to the dictionary
      puts "Thank you!"
    end                                            #add new word
  end                                              #look for word
end                                                #end while
  
