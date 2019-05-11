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
        puts "Please select from one of the following:"
        puts "1. User - All Routes"
        puts "2. User - Routes by Service"
        puts "3. Exit"
        puts ""
        input = gets.strip.to_i
        puts ""
        case input
        when 1
            all_user_routes
        when 2
            routes_by_service
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
end