class Genre
    
    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.each {|song| song.genre}
    end

    def artists
        songs.map {|song| song.artist}
    end
    
end
