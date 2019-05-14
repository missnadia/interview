class Service

    SERVICES = [    
        ["Strava", [
            "SRT", 
            "CVT", 
            "Perkiomen"
            ],
        ],
        ["RWGPS", [
            "CVT", 
            "Perkiomen", 
            "Welsh Mountain"
            ],
        ],
        ["KOMOOT", [
            "SRT", 
            "Welsh Mountain", 
            "Oaks to Philly"
            ]
        ]
    ]

    USER = []


    def all_service_routes
        puts "#{SERVICES[1][0]}"
    end

    def unique_routes
        uniq_routes = SERVICES.flatten.uniq
        puts "#{uniq_routes}"
    end

    def all_user_routes(user_id)
        create_service(user_id)
        puts "#{USER.flatten}"
    end

    def routes_by_service(user_id, input)
        for index in (0...SERVICES.length)
            case input
            when 1
                SERVICES[index]
                puts "#{USER.flatten}"
                puts ""
            when 2
                "RWGPS"
                SERVICES[1]
                puts "#{USER.flatten}"
                puts ""
            when 3
                "Komoot"
                SERVICES[2]
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
    end

    def prepend_user(user_id)
        routes = ["SRT", "CVT", "Perkiomen"]
        USER << routes.map { |route| "#{user_id}" + "#{route}" }
    end

    def append_user(user_id)
        routes = ["CVT", "Perkiomen", "Welsh Mountain"]
        USER << routes.map { |route| "#{route}" + "#{user_id}" }
    end

    def sandwich_user(user_id)
        routes = ["SRT", "Welsh Mountain", "Oaks to Philly"]
        USER << routes.map { |route| "#{user_id}" + "#{route}" + "#{user_id}" }
    end

    def create_service(user_id)
        prepend_user(user_id)
        append_user(user_id)
        sandwich_user(user_id)
    end
end