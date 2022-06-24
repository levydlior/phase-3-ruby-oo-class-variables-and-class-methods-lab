class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  @@count = 0
  @@genres = []
  @@artists = []

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |gen|
      if !hash.key?(gen)
      hash[gen] = 1
      else
      hash[gen] += 1
      end
          
    end
    hash
  end


  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
        if !artist_count.key?(artist)
            artist_count[artist] = 1
        else 
            artist_count[artist] += 1
        end
    end
    artist_count
end
    


end

jer = Song.new('me', 'yu', 'them')
mer = Song.new('me', 'yu', 'them')

ner = Song.new('me', 'yu', 'YAS')
ner = Song.new('me', 'yu', 'nas')
ner = Song.new('me', 'yu', 'them')
puts Song.genres