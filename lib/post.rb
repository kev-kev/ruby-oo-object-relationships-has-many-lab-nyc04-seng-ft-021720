require 'pry'

class Post
  attr_accessor :author, :title

  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    return nil unless self.author
    self.author.name
  end

end