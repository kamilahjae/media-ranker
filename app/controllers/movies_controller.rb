class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movies_params)

    if @movie.save
      redirect_to movie_path(@movie)
    else
      @movie.errors
      render "new"
    end
  end

  def show
    find_movie
  end

  def edit
    find_movie

    if @movie.save
      redirect_to movie_path(@movie)
    end
  end

  def update
    find_movie
  end

  def destroy
    find_movie
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end

  def movies_params
    params.require(:movie).permit(:name, :director, :description)
  end
end
