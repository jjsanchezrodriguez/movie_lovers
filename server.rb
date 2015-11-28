require 'sinatra'
require 'pry'
require "sinatra/reloader" if development?

enable(:sesions)

require_relative('./lib/leer_imdb.rb')
require_relative('./lib/blog.rb')
blog  = Blog.new()

get "/" do
	@my_blog = blog
	erb :index
end