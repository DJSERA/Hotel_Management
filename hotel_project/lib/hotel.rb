require_relative "room"

class Hotel
     def initialize (name, capacities)
@name = name
@room = {}


capacities.each do |room_name,capacity| 
    @rooms [room_name] = Room.new(capacity)
        end
    end

    def name
        @name.split(" ").map(&:capitalize).join(" ")

    end

    def rooms
        @rooms
    end


    def room_exist?(name)
        @rooms.has_key?(name) 
    end

    def check_in (person, room)
        if self.room_exist?(room)
            @room [room].add_occupant(person)
            p "Check in suceesful"
        else
        p "Sorry, room is full"
        end
    else
        p "Sorry, room does not exist"
        end
    end
end

def has_vacancy?
    @rooms.values.any? {|room| room.available_space > 0}
end

def list_rooms
    @rooms.each do |room_name, room|
        puts "#{room_name} #{room.available_space}"
    end
end

end
