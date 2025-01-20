require "sinatra"
require "sinatra/reloader"
require "tilt/erubi"

get "/" do
  @contents = Dir.glob("public/*").sort
  @contents.reverse! if params[:order] == 'descending'
  erb :home
end