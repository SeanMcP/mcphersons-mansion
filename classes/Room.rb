class Room
    def initialize( type, item )
        @type = type
        @item = item
    end

    def look
        puts "Looks like a %s." % [ @type ]
    end

    def search
        puts "You found a %s!" % [ @item ]
    end
end

my_room = Room.new "bedroom", "key"
my_room.look()
my_room.search()