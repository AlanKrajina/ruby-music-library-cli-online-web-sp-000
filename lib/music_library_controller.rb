require "pry"

class MusicLibraryController
  
  def initialize(path = "./db/mp3s")
    importer = MusicImporter.new(path)
    importer.import
  end
  
  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    input = gets

    while input != "exit"
      input = gets
    end
  
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
  end
  
  def list_songs
    number = 0
    array = Song.all.sort_by(&:name)  # sorts @@all songs by name

    array.each do |song|
    number += 1
    puts "#{number}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
    end  
  end
end

=begin



=end