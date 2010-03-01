require 'sinatra'
require 'haml'
require 'sass'
require 'compass'

class App < Sinatra::Default
  set :haml, { :format => :html5 }
  
  get "/" do
    haml :index
  end
end
