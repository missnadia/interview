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

    ALL_SERVICES = STRAVA + RWGPS + KOMOOT

    def all_service_routes
        puts "#{ALL_SERVICES}"
    end

    def unique_routes
        uniq_routes = ALL_SERVICES.uniq!
        puts "#{uniq_routes}"
    end

    def all_user_routes(user_id)
        
    end

    def routes_by_service(user_id)
    end
end