class MovieController < ApplicationController
    def movie
    end
    def create
        #render plain: params[:movie].inspect
        #raise params.inspect
        @movie = Movie.new(movie_params)
        @movie.save 
        redirect_to movie_path(@movie)
    end
    def new 
    end
    def movie
    end
    def show 
        @movie = Movie.find params[:id]
    end
    def movie_params
        params.require(:movie).permit(:title,:text)
    end 
end
