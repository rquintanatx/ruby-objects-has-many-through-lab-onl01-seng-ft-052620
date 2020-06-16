class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def songs 
    Song.all.select do |song|
      song.artist == self
    end 
  end 
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end 
  
  def genres 
    Genr.all.select do |
end 