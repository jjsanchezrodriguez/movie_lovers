require_relative "movie.rb"


class Mock
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