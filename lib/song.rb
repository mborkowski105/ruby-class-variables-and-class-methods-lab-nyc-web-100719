class Song 
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  
  def self.count
    return @@count
  end
  
  def self.genres 
    return @@genres.uniq
  end
end 