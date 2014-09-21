class AlbumsController < ApplicationController
  def index
  	@albums = Album.all
  end

  def new
  	@album = Album.new
  end

  def create
    @album = Album.new(album_params)
    @album.save
    redirect_to albums_path
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def album_params
  	params.require(:album).permit(:id, :name, :category)
  end
end
