require 'rack/test'
require 'app.rb'
class Generator
  include Rack::Test::Methods

  def app; App; end

end

task :generate do
  Generator.new.get("/") do |res|
    File.open("public/index.html","w+") do |f|
      f.puts res.body
    end
  end
end
