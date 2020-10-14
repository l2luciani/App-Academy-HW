class Map
    def initialize
        @my_map = []
    end
    
    def set(key, value)
        @my_map << [key, value]
    end
    
    def get(key)
        @my_map.each { |k, v| return v if key == k }
    end
    
    def delete(key)
    end
    
    def show
    end    
end    