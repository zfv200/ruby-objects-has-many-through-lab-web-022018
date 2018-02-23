class Genre
  attr_accessor :name, :artists, :songs

    def initialize(name)
      @name = name
      @songs = []
    end

    def songs
      @songs
    end

    def artists
      self.songs.map do |song|
        song.artist
      end
    end

end
