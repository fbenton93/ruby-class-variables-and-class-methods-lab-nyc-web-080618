class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end




  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    return_value = {}
    @@genres.each do |genre|
      if return_value[genre] != nil
        return_value[genre] += 1
      else
        return_value[genre] = 1
      end
    end
    return_value
  end

  def self.artist_count
    return_value = {}
    @@artists.each do |artist|
      if return_value[artist] != nil
        return_value[artist] += 1
      else
        return_value[artist] = 1
      end
    end
    return_value
  end

end
