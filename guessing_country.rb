
puts "Do you wanna play a game? Please answer Y for yes es or N for no."
user_answer = gets.chomp().upcase
  

def game
    countries = ["FRANCE","GERMANY", "CANADA","CANADA", "JAPAN","BRAZIL", "PERU", "ARGENTINA"]
    require_relative 'countries_hints.rb'
    include CountriesHints
    countries_hints = CountriesHints::COUNTRIES_HINTS
    random_country = countries.sample 
    puts "\nFirst hint! #{countries_hints[random_country.to_sym][0]}\nWhat country is it? "
    user_answer_country = gets.chomp().upcase
    if user_answer_country === random_country
        puts "\nCorrect! You are good!"
        restart()
    else
        puts "\nIncorrect. \nSecond hint! #{countries_hints[random_country.to_sym][1]}\nWhat country is it? "
        user_answer_country = gets.chomp().upcase
        if user_answer_country === random_country
            puts "\nCorrect! I know you knew it!"
            restart()
        else
            puts  "\nIncorrect. \nLast hint! #{countries_hints[random_country.to_sym][2]}\nWhat country is it? "
            user_answer_country = gets.chomp().upcase
            if user_answer_country === random_country
                puts "\nCongratulations! You won!"
                restart()
            else
                puts "\nI'm sorry. The correct answer is #{random_country}.You didn't won this time."
                restart()
            end    
        end
    end
end

def restart
    user_answer_restart = "" 
    puts "Play again? Y or N"
    user_answer_restart = gets.chomp().upcase
    if user_answer_restart === "Y"
        game()
    elsif  user_answer_restart === "N" 
        puts "\nOk, then. See ya!"
    else
        puts "\nPlease, answer (Y) for yes or (N) for no"
        restart()
    end   
end  

if user_answer === "N" || user_answer === "NO" 
    puts "\nOk, then. See ya!"
elsif user_answer === "Y" || user_answer === "YES" 
    puts "\nAmazing! So, Let's play a guessing country name game.\nI'll give you 3 hints and after every hint, you guess what country is.\nIf I say all the hints and you still don't know, You loose.\nAre you ready? let's Play!!"
    game()
else
    puts "\nPlease, answer (Y) for yes or (N) for no"
end
