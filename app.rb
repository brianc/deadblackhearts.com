require 'sinatra'
require 'haml'

class Album < Struct.new(:title, :cover_image, :id)
end

class App < Sinatra::Default
  set :haml, { :format => :html5 }

  get "/" do
    the_southern_front = Album.new
    the_southern_front.title = "The Southern Front"
    the_southern_front.id = "the-southern-front"
    the_southern_front.cover_image = "dbh_southernfront_medium.jpg"

    five_gallant_steeds = Album.new
    five_gallant_steeds.title = "Five Gallant Steeds"
    five_gallant_steeds.cover_image = "dbh_fivegallantsteeds_medium.jpg"
    five_gallant_steeds.id = "five-gallant-steeds.zip"
    @albums = [the_southern_front,five_gallant_steeds]
    haml :index
  end
end
