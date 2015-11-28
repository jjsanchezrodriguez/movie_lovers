require "imdb"
require "pry"

class IMDBMoviCatalog
	def search(title)
		search = Imdb::Search.new(title)
		movies = search.movies.map{|movie| movie}	
	end	
end

class MovieCatalog
	def initialize(movie_db)
		@movie_db = movie_db
	end

	def search(title_search)
		movies = @movie_db.search(title_search)
		i = 0
		j=0
		my_mock = Mock.new
		while (j<9 && i<movies.size)
			if (movies[i].poster!= nil)
				my_mock.add_movie(Movie.new(movies[i].title, movies[i].poster,movies[i].year))
				j = j+1
			end	
			i=i+1
		end
		my_mock
	end
end

class Movie
	attr_accessor :title, :poster, :year
	def initialize(title,poster,year)
		@title = title
		@poster = poster
		@year = year
	end
end

class Mock
	attr_reader :movies
	def initialize(movies = [])
		@movies = movies
	end

	def add_movie(movie)
		@movies << movie
	end
	
	def show
		@movies.each do |movie| 
			puts movie.title
			puts movie.poster
			puts movie.year
		end	
	end
end


