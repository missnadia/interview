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
            puts "Goodbye."
            input == "exit"
        else
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
            puts ""
        when 2
            unique_routes
            puts ""
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
        puts ""
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
        list_services
        input_1 = gets.strip.to_i
        list_services
        input_2 = gets.strip.to_i
        routes_by_service(user_id, input_1, input_2)
        binding.pry
    end

    def list_services
        array_length = Service.all.length
        puts ""
        puts "Please select from the following service(s):"
        Service.all.each_with_index { |routes, index| 
            puts "#{index + 1}. #{routes.service}" unless routes.service.nil?
        }
        puts "#{array_length}. Return to Main Menu"
        puts "#{array_length + 1}. Exit"
        puts ""
    end
end