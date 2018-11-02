class Artist

  attr_accessor :name, :genre, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |s|
      s.artist == self
    end
  end

  def genres
    songs.map do |s|
      s.genre
    end
  end

end
