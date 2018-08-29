require 'json'
require './utils/copy.rb'

class Article
    def initialize( type, treasure=nil )
        @type = type
        @treasure = treasure
    end

    def look
        puts $desc['article'][@type]
    end

    def search
        if @treasure
            puts "You find a #{@treasure}!"
            @treasure = nil
        else
            puts "You don't find anything."
        end
    end
end

bookshelf = Article.new "bookshelf", "key"
bookshelf.look()
bookshelf.search()
bookshelf.search()

# chest = Article.new "chest"
# chest.look()
# chest.search()