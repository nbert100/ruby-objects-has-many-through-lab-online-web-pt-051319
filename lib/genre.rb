class Genre 
  attr_accessor :song, :name, :artist
  @@all_genres = []
  
  def initialize(name)
    @name = name
    @@all_genres << self
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def self.all 
    @@all_genres
  end
  
  # def new_song(name, genre)
  #   song = Song.new(name, artist, self)
  # end
  
  def artists
    Song.all.collect {|song| song.artist}
  end
end