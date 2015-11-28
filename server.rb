require 'sinatra'
require 'pry'
require "sinatra/reloader" if development?

enable(:sesions)

require_relative('./lib/leer_imdb.rb')

movies = MovieCatalog.new(IMDBMoviCatalog.new)


get "/" do
	 
	
	
	erb :index
end

post "/find" do
	@my_movies = movies
	@result = @my_movies.search(params[:text])
	erb :find
end