require "imdb"
require "pry"

class IMDBMoviCatalog
	def search(title)
		search = Imdb::Search.new(title)
		movie_titles = search.movies.map{|movie| movie.title}	
	end	
end

class MovieCatalog
	def initialize(movie_db)
		@movie_db = movie_db
	end

	def search(title_search)
		movie_titles = @movie_db.search(title_search)
		binding.pry
		movie_titles.each { |title| puts title  }
	end
end

probando = MovieCatalog.new(IMDBMoviCatalog.new)

probando.search("Spectre")
