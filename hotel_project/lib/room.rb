class Room
    def initialize (capacity)
        @capacity = capacity
        @occuptant = []
                  
              end
          end
          
          def capacity 
            @capacity
          end
        
          def occuptant
            @occuptant
          end
        
          def full?
            if @occuptant.length < @capacity
            return false
          else
            return true
            end
          end
        
          def available_space
            @capacity - @occuptant.length
          end
        
          def add_occupant (person)
             if self.full?
                return false
            
             else
            @occuptant << person
            return true
                end
            end
        end
end
