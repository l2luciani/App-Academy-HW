class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.unshift(el)
    end  
    
    def dequeue
        @queue = @queue[0...-1]
    end
    
    def peek
        @queue.first
    end    

    private

    attr_reader :underlying_array
end    