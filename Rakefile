require 'rack/test'
require 'app.rb'

task :install do
  puts "You need to run this with sudo"
  sh('gem update --system')
  sh('gem install sinatra')
end

task :default do
  sh('ruby app.rb')
end

task :routes do
  Sinatra::Application.routes["GET"].each do |route|
    puts route[0].source
  end
end
