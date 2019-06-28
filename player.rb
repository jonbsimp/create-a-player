class Player
    def initialize
        @score = 0
    end

    def score
        @score
    end

    def convert_height(height)
        feet = height / 12
        inches = height % 12
        new_height = "#{feet}'#{inches}"
    end

    def gym
        @score += 1
    end

    def dog_cat(choice)
        if choice == "dog"
            @score += 1
        elsif choice == "cat"
            @score -= 1
        end
    end

    def addition(math)
        if math == 4
            @score += 1
            puts 'You are a regular Einstein.'
        else
            @score -=1
            puts 'I can tell you preferred to party than study.'
        end
    end
end

class QB < Player
    def height_score(height)
        if height >= 72
            @score += 1
        end
    end

    def weight_score(weight)
        if weight >= 180
            @score += 1
        end
    end

    # 1=awareness 2=strength 3=speed
    def attribute_score(pro, con)
        if pro == 1
            @score += 1
        end

        if con == 3
            @score += 1
        end
    end

    def position_trivia(pass_td)
        if pass_td == 'peyton manning'
            @score += 1
            puts 'Well look at you, smarty-pants.'
        else
            @score -= 1
            puts 'well, actually it was Peyton Manning.'
        end
    end
end

class WR < Player
    def height_score(height)
        if height >= 72
            @score += 1
        end
    end

    def weight_score(weight)
        if weight >= 175
            @score += 1
        end
    end

    # 1=awareness 2=strength 3=speed
    def attribute_score(pro, con)
        if pro == 3
            @score += 1
        end

        if con == 2
            @score += 1
        end
    end

    def position_trivia(rec_td)
        if rec_td == 'jerry rice'
            @score += 1
            puts 'Well look at you, smarty-pants.'
        else
            @score -= 1
            puts 'Well, actually it was Jerry Rice.'
        end
    end
end

class RB < Player
    def height_score(height)
        if height < 72
            @score += 1
        end
    end

    def weight_score(weight)
        if weight >= 200
            @score += 1
        end
    end

    def position_trivia(rush_td)
        if rush_td == 'emmitt smith'
            @score += 1
            puts 'Well look at you, smarty-pants.'
        else
            @score -= 1
            puts 'Well, actually it was Emmitt Smith.'
        end
end
    # 1=awareness 2=strength 3=speed
    def attribute_score(pro, con)
        if pro == 3
            @score += 1
        end

        if con == 1
            @score += 1
        end
    end
end

class DB < Player
    def height_score(height)
        if height >= 72
            @score += 1
        end
    end

    def weight_score(weight)
        if weight >= 175
            @score += 1
        end
    end

    def position_trivia(picks)
        if picks == 'paul krause'
            @score += 1
            puts 'Well look at you, smarty-pants.'
        else
            @score -= 1
            puts 'Well, actually it was Paul Krause.'
        end
end
    # 1=awareness 2=strength 3=speed
    def attribute_score(pro, con)
        if pro == 3
            @score += 1
        end

        if con == 2
            @score += 1
        end
    end
end

class LB < Player
    def height_score(height)
        if height >= 74
            @score += 1
        end
    end

    def weight_score(weight)
        if weight >= 220
            @score += 1
        end
    end

    # 1=awareness 2=strength 3=speed
    def attribute_score(pro, con)
        if pro == 1
            @score += 1
        end

        if con == 3
            @score += 1
        end
    end

    def position_trivia(tackles)
        if tackles == 'jessie tuggle'
            @score += 1
            puts 'Well look at you, smarty-pants.'
        else
            @score -= 1
            puts 'Well, actually it was Jessie Tuggle.'
        end
    end
end

class DL < Player
    def height_score(height)
        if height >= 75
            @score += 1
        end
    end

    def weight_score(weight)
        if weight >= 260
            @score += 1
        end
    end

    # 1=awareness 2=strength 3=speed
    def attribute_score(pro, con)
        if pro == 2
            @score += 1
        end

        if con == 1
            @score += 1
        end
    end

    def position_trivia(sacks)
        if sacks == 'bruce smith'
            @score += 1
            puts 'Well look at you, smarty-pants.'
        else
            @score -= 1
            puts 'Well, actually it was Bruce Smith.'
        end
    end
end

def career
    puts 'Congratulations on taking a step to the next level of your football career. You are about to begin your college career. Give us your name to continue...'
    name = gets.chomp
    puts ''

    puts "Welcome #{name}. Let's see where your career goes from here. What position do you play? Type 1 for Quarterback, 2 for Wide Receiver, 3 for Running Back, 4 for Denfensive Back, 5 for Linebacker, 6 for Defensive Lineman"
    input = gets.chomp.to_i
    positions = [1,2,3,4,5,6]
    unless positions.include?input
        puts 'please select input a number 1-6 corresponding to your position.'
        input = gets.chomp.to_i
    end

    if input == 1
        position = 'Quarterback'
        athlete = QB.new
    elsif input ==2
        position = 'Wide Receiver'
        athlete = WR.new
    elsif input == 3
        position = 'Running Back'
        athlete = RB.new
    elsif input == 4
        position = 'Defensive Back'
        athlete = DB.new
    elsif input == 5
        position = 'Linebacker'
        athlete = LB.new
    elsif input == 6
        position = 'Defensive Line'
        athlete = DL.new
    end
    puts ''

    puts "Ahhhh you're a #{position}! Lets get a better idea of what you're like. How tall are you (in inches please)?"
    height = gets.chomp.to_i
    athlete.height_score(height)
    puts ''

    puts "Now tell us your weight?"
    weight = gets.chomp.to_i
    athlete.weight_score(weight)
    puts ''

    puts "Alright, you are a strapping #{athlete.convert_height(height)}, and #{weight} lbs. Now that we know what you look like, let's define your skills. The most important skills in football are: awareness, strength and speed. Choose your best attribute (type 1 for awareness, type 2 for strength, or type 3 for speed)"
    pro = gets.chomp.to_i
    unless pro == 1 or pro == 2 or pro == 3
        puts 'please select a number 1-3'
        pro = gets.chomp.to_i
    end
    if pro == 1
        strength = 'awareness'
    elsif pro == 2
        strength = 'strength'
    elsif pro == 3
        strength = 'speed'
    end
    puts ''

    puts "Wow, #{strength} is your greatest gift. That's great. Now pick your biggest weakness (type 1 for awareness, type 2 for strenght, or type 3 for speed. Your greatest strength cannot be your greatest weakness.)"
    con = gets.chomp.to_i
    if con == 1
        weakness = 'awareness'
    elsif con == 2
        weakness = 'strength'
    elsif con == 3
        weakness = 'speed'
    else
        puts 'please select a number 1 through 3'
        pro = gets.chomp.to_i
        puts ''
    end
    puts ''

    puts "Oh that's too bad, #{weakness} is a really important attribute for any football player."
    athlete.attribute_score(pro, con)
    puts ''

    if athlete.score == 4
        schools = 'Alabama, Clemson, or Oklahoma'
    elsif athlete.score == 3
        schools = 'Oregon, Michigan State, or Georgia'
    elsif athlete.score == 2
        schools = 'Kentucky, Iowa, or Houston'
    elsif athlete.score == 1
        schools = 'Central Washington University, Learn Academy'
    else
        puts 'You are not cut out for this... you died playing pickup football during the summer.'
        exit
    end

    puts "Now it's time for your dreams to come true. You have received offers from these schools: #{schools}. Choose where you are going..."
    college = gets.chomp
    new_college = college.split.map(&:downcase).join(' ')
    newer_college = new_college.split.map(&:capitalize).join(' ')
    unless schools.include?newer_college
        puts 'please pick on of the schools that have offered you a scholarship.'
        college = gets.chomp
    end
    puts ''

    puts "You have chosen #{college}! A fine school with a lot of history. Make your family proud."
    puts ''

    puts "You've had an amazing college career so far and your team is gearing up for a big game tomorrow. But, your buddy invited you to a huge frat party and you're interested in going. Also, you have a physics final the day after the game. Your options are as follows: 1, stay in and study. 2, go to the party. 3, go to the gym and gear up for the game."
    choice = gets.chomp.to_i
    puts ''

    if choice == 1
        puts "#{name}, I hope you thought this one through. Choosing to study will help keep your grades up, but it will have an impact on how you perform in the big game."
        puts ''
        if athlete.score <= 1
            puts "Focusing on studying has paid off on your computer science exam, but your body was not ready for the big game. Unfortunately, #{name}, you crumbled under the pressure and your coach has decided to cut you from the team."
            exit
        end
    elsif choice == 2
        puts "Choosing to party is always a great choice #{name}.. however, this could stop you from reaching your goals."
        puts ''
        if athlete.score <= 1
            puts "#{name}, you are the bell of the ball, all your teammates love you.  However, while out partying with all your friends, you did a keg stand longer than anyone else in world history, you blacked out, and found yourself in jail.  Going to jail is against team policy, you've been cut, sorry."
            exit
        end
    elsif choice == 3
        puts "Excellent decision #{name}. Your teammates and coaches will be happy that you went to the gym. You watched film about your upcoming oponent and noticed a weakness in their strategy. You're grasp on the game is improving. This will help you perform at your best level this weekend."
        puts ''
        athlete.gym
    else
        puts 'please select a choice, 1 through 3'
        choice = gets.chomp
        puts ''
    end

    if athlete.score > 3
        puts "All your hard work has paid off, #{name}.  You won the big game and set your team up to take home the conference title. Congratulations!"
        puts ''
    else
        puts "Your team fought hard, but you narrowly lost to your rival.  It's yours first loss of the season, so you are not out of it yet. Keep on trying, #{name}."
        puts ''
    end

    puts "What an amazing college career #{name}. Your success has led to a lot of popularity in NFL circles and now it's time to prepare for the NFL Combine. The first step in the combine is to answer a few obscure questions..."
    puts ''

    puts "Hey #{name}, I'm Coach Taylor from the Cincinatti Bengals. My question for ya is: Would you rather be a cat or dog?"
    choice = gets.chomp
    while choice != "dog" && choice != "cat"
        puts "Please choose dog or cat"
        choice = gets.chomp
    end
    athlete.dog_cat(choice)

    puts "Hey #{name}, Coach Brown from the Patriots here. My question for you is: What is 2 + 2?"
    math = gets.chomp.to_i
    athlete.addition(math)

    if athlete.class.to_s == 'QB'
        puts "Who is the all time leader in passing touchdowns for their career?"
        pass_td = gets.chomp.downcase
        athlete.position_trivia(pass_td)
    end

    if athlete.class.to_s == 'WR'
        puts "Who is the all time leader in receiving touchdowns for their career?"
        rec_td = gets.chomp.downcase
        athlete.position_trivia(rec_td)
    end

    if athlete.class.to_s == 'RB'
        puts "Who is the all time leader in rushing touchdowns for their career?"
        rush_td = gets.chomp.downcase
        athlete.position_trivia(rush_td)
    end

    if athlete.class.to_s == 'DB'
        puts "Who is the all time leader in interceptions for their career?"
        picks = gets.chomp.downcase
        athlete.position_trivia(picks)
    end

    if athlete.class.to_s == 'LB'
        puts "Who is the all time leader in tackles for their career?"
        tackles = gets.chomp.downcase
        athlete.position_trivia(tackles)
    end

    if athlete.class.to_s == 'DL'
        puts "Who is the all time leader in sacks for their career?"
        sacks = gets.chomp.downcase
        athlete.position_trivia(sacks)
    end
end

career()
