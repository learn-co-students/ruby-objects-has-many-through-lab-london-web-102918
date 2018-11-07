class Artist

  @@artists = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@artists << self
  end

  def new_song(name, genre)
    new_song = Song.new(name, genre)
    new_song.artist = self
    new_song
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    Song.all.map {|song| song.genre}.uniq
  end

  def self.all
    @@artists
  end

end
