class Genre

  @@genres = []

  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @@genres << self
  end

  def self.all
    @@genres.uniq
  end

  def songs
    Song.all.select {|song| song if song.genre == self}
  end

  def artists
    self.songs.map {|song| song.artist}
  end


end
