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
        @my_map.delete_if { |k, v| k == key }
        @my_map
    end
    
    def show
        @my_map.each { |k, v| puts "The Key is #{k} and value is #{v}" }
    end    
end    