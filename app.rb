require "sinatra"
require "sinatra/reloader"
require "tilt/erubi"

get "/" do
  @contents = Dir.glob("public/*")
  erb :home
end