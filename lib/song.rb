require_relative 'artist'

class Song
  @@all = []

  def self.all
    @@all.each do |song| puts song end
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end
end
