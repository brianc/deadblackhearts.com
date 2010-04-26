require 'rubygems'
require 'sinatra'
require 'haml'

get "/test" do
  "hello"
end

get "/what" do
 env.to_s
end
