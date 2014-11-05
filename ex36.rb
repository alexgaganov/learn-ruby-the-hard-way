def start
        system "clear"
        puts "You're in the beginning of a narrow tunnel."
        puts "There are zombies chasing you."
        puts "You have #{$lifes} lifes."
        puts "You can run by yourself or trust in God."
        puts "What do you choose?"
        print ">"
        choice = $stdin.gets.chomp

        # Read user input until he enters either me or god
        while choice != "me" && choice != "god"
                puts "You can't trust in <#{choice}>. Available options are either <me> or <god>"
                print ">"
                choice = $stdin.gets.chomp
        end

        if choice == "me" 
                $mode = "Manual"
        else
                $mode = "Automatic"
        end
                
        play("begin")
end

def play(obstacle)
        while $lifes > 0

                if obstacle == "begin"
                        obstacle = $obstacles.sample
                end

                puts "You're facing an obstacle at the #{obstacle}"

                action = get_action

                if action == "back"
                        undo
                end

                if $mode == "Manual"
                        puts "You've chosen to #{action}"
                else
                        puts "God told you to #{action}"
                end

                alive = if_passed(obstacle, action)

                if alive
                        puts "Well done! You have #{$lifes} lifes left."
                else
                        $lifes -= 1
                        puts "Epic fail! You have #{$lifes} lifes left."
                end

                $history.push([obstacle, alive])
                obstacle = "begin"
        end

        puts "#{$mode} mode game over"
        exit
end

def get_action
        if $mode == "Manual"
                print "Available options are:"
                $actions.each {|action| print " <#{action}>"}
                print "\n>"
                choice = $stdin.gets.chomp

                while !$actions.include?(choice) && choice != "back"
                        puts "Wrong option!"
                        print ">"
                        choice = $stdin.gets.chomp
                end

                return choice
        else
                return $actions.sample
        end
end

def if_passed(obstacle, action)

        return case obstacle
        when "bottom"
                action == "jump"
        when "top"
                action == "slide"
        when "right"
                action == "move left"
        when "left"
                action == "move right"
        when "back"
                undo
        end
end

def undo
        last = $history.pop

        if last.nil?
                puts "Returning to the beginning."
                start
        elsif !last[1]
                $lifes += 1
                play(last[0])
        else
                play(last[0])
        end
end

$actions = ['slide', 'jump', 'move right', 'move left']
$obstacles = ['bottom', 'top', 'right', 'left']
$history = Array.new

$lifes = 3
$obstacles_counter = 0

start
