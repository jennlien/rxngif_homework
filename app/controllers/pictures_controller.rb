class PicturesController < ApplicationController
  def show
  	@picture = Picture.find(params[:id])
  end

  def index
  	@list_of_pictures = Picture.all
  end

  def create
  	@new_picture = Picture.new
  	@new_picture.source = params[:source]
 	@new_picture.caption = params[:caption]
 	@new_picture.save
  end
  
  def destroy
  	picture_to_be_destroyed = Picture.find(params[:id])
  	picture_to_be_destroyed.destroy
  end

  def edit
  	@edit_picture = Picture.find(params[:id])
  
  end

  def update
  	@update_picture = Picture.find(params[:id])
	@update_picture.source = params[:source]
  	@update_picture.caption = params[:caption]
  	@update_picture.save
  end
end
