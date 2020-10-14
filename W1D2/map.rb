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
        value = get(key)
        @my_map.reject! { |k, v| k == key }
        value
    end
    
    def show
        deep_dup(my_map)
    end

  private

  attr_reader :my_map
  
    def deep_dup(arr)
        arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
    end  
end    