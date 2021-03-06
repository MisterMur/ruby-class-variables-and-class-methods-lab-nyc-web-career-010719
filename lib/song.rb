require 'pry'
class Song

  attr_accessor :name, :artist,:genre

  @@count = 0
  @@genres = []
  @@artists =[]

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist

  end

  def self.count
    @@count
    # binding.pry
  end

  def self.artists
    # puts artists
    # @@artists.uniq!
    # binding.pry
    # puts @@artists.uniq!
    @@artists.uniq!
  end
  # binding.pry
  def self.genres
    @@genres.uniq!
  end
  def self.genre_count
    hash = Hash.new(0)
    @@genres.each { |genre| hash[genre] += 1 }
    return hash
  end
  def self.artist_count
    hash = Hash.new(0)
    @@artists.each { |artist| hash[artist] += 1 }
    return hash
  end


end #end of song class
