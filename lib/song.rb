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
  @@artists = []
  
  def self.count
    return @@count
  end
  
  def self.genres 
    return @@genres.uniq
  end
  
  def self.genres_full 
    return @@genres
  end
  
  def self.artists 
    return @@artists.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    
    self.genres.each do |genre|
      genre_hash[genre] = genres_full.count
    end
    
    return genre_hash
  end
end 