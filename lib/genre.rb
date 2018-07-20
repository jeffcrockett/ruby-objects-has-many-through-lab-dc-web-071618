require_relative 'artist'
require_relative 'song'

class Genre
  @@all = []

  attr_accessor :name

  def self.all
    @all.each do |genre| puts genre end
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def new_song(name, artist)
    song = Song.new(name, artist, self)
  end

  def artists
    @self.songs.map do |song| song.artist end
  end

end
