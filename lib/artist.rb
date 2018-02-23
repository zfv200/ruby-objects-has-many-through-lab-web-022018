class Artist
  attr_accessor :name, :artist, :genres
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    @genres << song.genre
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @genres
  end

end
