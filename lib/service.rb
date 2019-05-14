class Service

    SERVICES = [
    STRAVA = [
        "SRT", 
        "CVT", 
        "Perkiomen"
        ],
    RWGPS = [
        "CVT", 
        "Perkiomen", 
        "Welsh Mountain"
        ],
    KOMOOT = [
        "SRT", 
        "Welsh Mountain", 
        "Oaks to Philly"
    ]
    ]

    USER = []


    def all_service_routes
        Strava.all
        puts "#{USER}"
    end

    def unique_routes
        uniq_routes = SERVICES.flatten.uniq
        puts "#{uniq_routes}"
    end

    def all_user_routes(user_id)
        strava_user(user_id)
        rwgps_user(user_id)
        komoot_user(user_id)
        puts "#{USER.flatten}"
    end

    def routes_by_service(user_id, input)
        case input
        when 1
            strava_user(user_id)
            puts "#{USER.flatten}"
            puts ""
        when 2
            rwgps_user(user_id)
            puts "#{USER.flatten}"
            puts ""
        when 3
            komoot_user(user_id)
            puts "#{USER.flatten}"
            puts ""
        when 4
            strava_user(user_id)
            rwgps_user(user_id)
            puts "#{USER.flatten}"
            puts ""
        when 5
            strava_user(user_id)
            komoot_user(user_id)
            puts "#{USER.flatten}"
            puts ""
        when 6
            komoot_user(user_id)
            rwgps_user(user_id)
            puts "#{USER.flatten}"
            puts ""
        when 7
            puts "Goodbye."
            input == "exit"
        else
            puts "Invalid entry."
            puts ""
            start
        end
    end

    def strava_user(user_id)
        USER << STRAVA.map { |route| "#{user_id}" + "#{route}" }
    end

    def rwgps_user(user_id)
        USER << RWGPS.map { |route| "#{route}" + "#{user_id}" }
    end

    def komoot_user(user_id)
        USER << KOMOOT.map { |route| "#{user_id}" + "#{route}" + "#{user_id}" }
    end
end