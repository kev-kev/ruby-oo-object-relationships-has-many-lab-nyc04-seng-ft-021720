require 'pry'

class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def artist_name
    return nil unless self.artist
    self.artist.name
  end

end