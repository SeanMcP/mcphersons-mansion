require 'json'
raw = File.read('./data/desc.json')
$data = JSON.parse(raw)

class Room
    def initialize( type, items )
        @type = type
        @items = items
    end

    def look
        puts $data['room'][@type]
        puts "Around the #{@type}, you see:"
        for item in @items
            puts item
        end
    end

    def search
        puts "You found a #{@type}!"
    end
end

my_room = Room.new "bedroom", [ "desk", "bookshelf" ]
my_room.look()
# my_room.search()