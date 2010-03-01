require 'sinatra'
require 'haml'

class Album
  attr_accessor :title, :cover_image, :songs
  def initialize
    @songs = []
  end
end

class Song < Struct.new(:title)
end

class App < Sinatra::Default
  set :haml, { :format => :html5 }

  get "/" do
    the_southern_front = Album.new
    the_southern_front.title = "The Southern Front"
    the_southern_front.cover_image = "dbh_southernfront_medium.jpg"
    songs = ["Ambush!",
             "Postcard from Somewhere Cold",
             "Spit Shine",
             "Out the Way You Came In",
             "Married to the Sea",
             "How to Win an Argument",
             "5 to 9"].map { |s| Song.new(s) }
    the_southern_front.songs = songs
    
    five_gallant_steeds = Album.new
    five_gallant_steeds.title = "Five Gallant Steeds"
    five_gallant_steeds.cover_image = "dbh_fivegallantsteeds_medium.jpg"
    songs = ["Failure",
             "Goodbye",
             "Pseudo",
             "Easy Let Down",
             "White Lie"].map { |s| Song.new(s) }
    five_gallant_steeds.songs = songs
    @albums = [the_southern_front,five_gallant_steeds]
    haml :index
  end
end
