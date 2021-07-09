class MovieController < ApplicationController
    def movie
    end
    def create
        #render plain: params[:movie].inspect
        #raise params.inspect
        @movie = Movie.new(anime_params)
        @movie.save 
        redirect_to movie_path(@movie)
    end
    def new 
    end
    def movie
    end
    def show 
        @Anime.find params[:id]
    end
    def anime_params
        params.require(:anime).permit(:title,:text)
    end 
end
