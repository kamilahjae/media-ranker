class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to album_path(@album)
    else @movie.errors
      render "new"
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  def upvote
    @album = Album.find(params[:id])
    @album.rank.create(album_params)
  end

  def album_params
    params.require(:album).permit(:name, :artist, :description)
  end
end
