class Service
    attr_accessor :service, :routes

    @@all = []
    USER = []
    ALL_ROUTES = []

    def initialize(service = nil, routes = nil)
        @service = service
        @routes = routes
        @@all << self
    end

    def self.all
        @@all
    end

    def map_routes
        @@all.map.each_with_index do |service, index|
            ALL_ROUTES << service.routes unless service.routes.nil?
        end
    end

    def all_service_routes
        map_routes
        puts "#{ALL_ROUTES.flatten}"
    end

    def unique_routes
        map_routes
        uniq_routes = ALL_ROUTES.flatten.uniq
        puts "#{uniq_routes}"
    end

    def all_user_routes(user_id)
        services = []

        @@all.map.each_with_index { |service, index| services << service.service }
        
        services.each do |name|
            case name
            when "Strava"
                service = @@all.select { |x| x.service == "Strava" }
                    routes = service[0].routes
                    user_routes = prepend_user(user_id, routes)
                    USER << user_routes
            when "RWGPS"
                service = @@all.select { |x| x.service == "RWGPS" }
                    routes = service[0].routes
                    user_routes = append_user(user_id, routes)
                    USER << user_routes
            when "Komoot"
                service = @@all.select { |x| x.service == "Komoot" }
                    routes = service[0].routes
                    user_routes = sandwich_user(user_id, routes)
                    USER << user_routes
                else
                service = @@all.select { |x| x.service != nil }
                routes = service[0].routes 
                USER << routes
            end
        end

        puts "#{USER.flatten.uniq}"
    end

    def routes_by_service(user_id, input_1, input_2)
        input_1 = @@all[input_1 - 1]
        input_2 = @@all[input_2 - 1]
        input_service = [input_1.service, input_2.service]
        input_combo = [input_1, input_2]
        input_service.each do |name|
            case name
            when "Strava"
                service = input_combo.select { |x| x.service == "Strava" }
                routes = service[0].routes
                user_routes = prepend_user(user_id, routes)
                USER << user_routes
            when "RWGPS"
                service = input_combo.select { |x| x.service == "RWGPS" }
                routes = service[0].routes
                user_routes = append_user(user_id, routes)
                USER << user_routes
            when "Komoot"
                service = input_combo.select { |x| x.service == "Komoot" }
                routes = service[0].routes
                user_routes = sandwich_user(user_id, routes)
                USER << user_routes
            else
                service = input_combo.select { |x| x.service != nil }
                routes = service[0].routes 
                USER << routes
            end
        end
        puts "#{input_service}: #{USER.flatten.uniq}"
    end

    def prepend_user(user_id, routes)
        routes.map { |route| "#{user_id}" + "#{route}" }
    end

    def append_user(user_id, routes)
        routes.map { |route| "#{route}" + "#{user_id}" }
    end

    def sandwich_user(user_id, routes)
        routes.map { |route| "#{user_id}" + "#{route}" + "#{user_id}" }
    end
end