class Service

    STRAVA = [
        "SRT", 
        "CVT", 
        "Perkiomen"
    ]

    RWGPS = [
        "CVT", 
        "Perkiomen", 
        "Welsh Mountain"
    ]

    KOMOOT = [
        "SRT", 
        "Welsh Mountain", 
        "Oaks to Philly"
    ]

    def all_service_routes
        all_routes = []
        all_routes = (STRAVA << RWGPS << KOMOOT).flatten
        puts "#{all_routes}"
    end

    def unique_routes
    end

    def all_user_routes
    end

    def routes_by_service
    end
end