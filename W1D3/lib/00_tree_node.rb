class PolyTreeNode
    attr_reader :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end    

    def parent=(property)
        unless property.nil?
            @parent = property
            @children << property
        end    
    end    
    
end