require 'pry'

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    # only want to return songs by this instance of artist
    Song.all.select{ |song|
      song.artist == self
    }
  end

  def add_song(song)
    # take in an argument of a song and assign this instance of artist to it as it's artist attribute
    song.artist = self
  end

  def add_song_by_name(song_name)
    # binding.pry
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    Song.all.length
  end

end