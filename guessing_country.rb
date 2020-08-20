
puts "Do you wanna play a game? Please answer Y for yes es or N for no."
user_answer = gets.chomp().upcase
  

def game
    countries = ["FRANCE","GERMANY", "CANADA","CANADA", "JAPAN","BRAZIL", "PERU", "ARGENTINA"]
    countries_hints = {
        FRANCE: [
            "Its Gastronomy is very famous worldwide.",
            "Historically, they don't like England.",
            "Its capital is the city of love.",
        ],
        GERMANY: [
            "Its national flag is black, red and yellow.",
            "Its president is a woman.",
            "This country is famous for love beer."
    
        ],
        CANADA:[
            "It was one of the British colonies.",
            "Poutine is the most famous dish.",
            "This country has two oficial languages: French and English."
        
        ],
        JAPAN:[
            "Its national flag is white and red.",
            "Anime is very famous in this country.",
            "Their food is well known worldwide."
        ],
        BRAZIL: [
            "Its national flag is green, yellow, blue, and white.",
            "Natives speak Portuguese.",
            "This country is famous for its national soccer team."
            
        ],
        PERU: [
            "This country is located in South America.",
            "The capital is Lima.",
            "One of the world wonders is in this country."
        ],
        ARGENTINA: [
            "The Pope was born there.",
            "This country is famous for Tango.",
            "Lionel Messi is one of their favorite idols."
        ],
        INDIA: [
            "The industry of cinema, called Bollywood, is very strong.",
            "This country is located in Asia.",
            "Mahatma Ghandi was born there."
        ],
        EGYPT:[
            "One of the oldest civilization of the World.",
            "One of the Seven Wonders of the World is in there.",
            "Antropologists and tourists love this country",
        ],
        MADAGASCAR:[
            "It is an island country in Africa.",
            "The capital is Antananarivo.",
            "This country became famous for being the namesake of a popular animated film."
        ]
    }
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
