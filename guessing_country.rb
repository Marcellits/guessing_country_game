
puts "Do you wanna play a silly game?"
user_answer = gets.chomp().upcase

def game
    countries = ["GERMANY", "BRAZIL", "PERU"]
    random_country = countries.sample
    user_answer_country = ""
    if random_country === countries[0]
        puts "\nIts national flag is black, red and yellow. What country is it?"
        user_answer_country = gets.chomp().upcase
        if user_answer_country === random_country
            puts "\nCorrect! You are good!"
        else
            puts "\nIncorrect. Next hint: Its president is a woman.What country is it?"
            user_answer_country = gets.chomp().upcase
            if user_answer_country === random_country
                puts "\nCorrect! I now you knew it!"
            else
                puts "\nIncorrect. Last hint. Good Luck! This country is famous for love beer. What country is it?"
                user_answer_country = gets.chomp().upcase
                if user_answer_country === random_country
                    puts "\nCongratulations! You won!"
                else
                    puts "\nI'm sorry. You didn't won this time."
                end    
            end
        end
    elsif random_country === countries[1]     
        puts "\nIts national flag is green, yellow, blue, and white . What country is it?"
        user_answer_country = gets.chomp().upcase
        if user_answer_country === random_country
            puts "\nCorrect! You are good!"
        else
            puts "\nIncorrect. Next hint: This country is famous for its nature. What country is it?"
            user_answer_country = gets.chomp().upcase
            if user_answer_country === random_country
                puts "\nCorrect! I know you knew it! The country is #{random_country}!"
            else
                puts "\nIncorrect. You got this! Last hint:\nNatives speak Portuguese. What country is it?"
                user_answer_country = gets.chomp().upcase
                if user_answer_country === random_country
                    puts "\nCongratulations! You won! The country is #{random_country}!"
                else
                    puts "\nI'm sorry. You didn't won this time."
                end    
            end
        end
    else
        puts "\nThis country is located in South America . What country is it?"
        user_answer_country = gets.chomp().upcase
        if user_answer_country === random_country
            puts "\nCorrect! You are good!"
        else
            puts "\nIncorrect. Next hint: Natives speak spanish. What country is it?"
            user_answer_country = gets.chomp().upcase
            if user_answer_country === random_country
                puts "\nCorrect! I now you knew it!"
            else
                puts "\nIncorrect. You got this! Last hint:\n One of the world wonders is in there. What country is it?"
                user_answer_country = gets.chomp().upcase
                if user_answer_country === random_country
                    puts "\nCongratulations! You won!"
                else
                    puts "\nI'm sorry. You didn't won this time."
                end    
            end
        end   
    end            
end

if user_answer === "N" || user_answer === "NO" 
    puts "\nOk, then. See ya!"
elsif user_answer === "Y" || user_answer === "YES" 
    puts "\nAmazing! So, Let's play a guessing country game.\n I'll give you 3 hints and after every hint, you guess what country is.\n If I say all the hints and you still don't know, You loose.\n Are you ready? let's Play!!"
    game()
else
    puts "\nPlease, answer (Y) for yes or (N) for no"
end
