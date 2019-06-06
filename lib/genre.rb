class Genre
<<<<<<< HEAD:lib/genre.rb
#  extend Concerns::Findable
=======
  extend Concerns::Findable
>>>>>>> da5e67e0dda6a11fb66dfab0d131cc0c2aa6e033:lib/genre.rb

  attr_accessor :name, :songs

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(new_genre)
    genre = Genre.new(new_genre)
    genre.save
    genre
  end

  def artists
    @songs.collect { |song| song.artist }.uniq
  end
end