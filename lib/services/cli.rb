class CLI < Service

    def call
        puts "Hammerhead Interview Development Assignment"
        puts ""
        start
    end

    def start
        puts "Please select from one of the following:"
        puts "1. Services"
        puts "2. User"
        puts "3. Exit"
        puts ""
        input = gets.strip.to_i
        puts ""
        case input
        when 1
            service_info
        when 2
            user_info
        when 3
            puts ""
            puts "Goodbye."
            input == "exit"
        else
            puts ""
            puts "Invalid entry."
            puts ""
            start
        end
    end

    def service_info
        puts "Please select from one of the following:"
        puts "1. Services - All Routes"
        puts "2. Services - Unique Routes"
        puts "3. Exit"
        puts ""
        input = gets.strip.to_i
        puts ""
        case input
        when 1
            all_service_routes
        when 2
            unique_routes
        when 3
            puts "Goodbye."
            input == "exit"
        else
            puts "Invalid entry."
            puts ""
            start
        end
    end

    def user_info
        puts "Please enter the user ID:"
        user_id = gets.strip.to_i
        puts ""
        puts "Please select from one of the following:"
        puts "1. User - All Routes"
        puts "2. User - Routes by Service"
        puts "3. Exit"
        puts ""
        input = gets.strip.to_i
        puts ""
        case input
        when 1
            all_user_routes(user_id)
        when 2
            select_service(user_id)
        when 3
            puts "Goodbye."
            input == "exit"
        else
            puts "Invalid entry."
            puts ""
            start
        end
    end

    def select_service(user_id)
        puts "Please select from the following service(s):"
        puts "1. Strava"
        puts "2. RWGPS"
        puts "3. Komoot"
        puts "4. Strava, RWGPS"
        puts "5. Strava, Komoot"
        puts "6. Komoot, RWGPS"
        puts "7. Exit"
        puts ""
        input = gets.strip.to_i
        puts ""
        routes_by_service(user_id, input)
        restart
    end

    def restart
        puts "Please select from the following:"
        puts "1. Return to Main Menu"
        puts "2. Exit"
        input = gets.strip.to_i
        puts ""
        case input
        when 1
            start
        when 2
            puts "Goodbye."
            input == "exit"
        else
            puts "Invalid entry."
            puts ""
            start
        end
    end
end