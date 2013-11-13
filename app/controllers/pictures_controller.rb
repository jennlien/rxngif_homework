class PicturesController < ApplicationController
  def show
  	@picture = Picture.find(params[:id])
  end

  def index
  	@list_of_pictures = Picture.all
  end

  def create
    p = Picture.new
    p.source = params[:source]
  	p.caption = params[:caption]
  	p.save
    redirect_to "http://localhost:3000/all_pictures", :notice=> "Picture has been created"
  end
  
  def new
  end
  
  def destroy
  	picture_to_be_destroyed = Picture.find(params[:id])
  	picture_to_be_destroyed.destroy
    redirect_to "http://localhost:3000/all_pictures", :notice=> "Picture has been deleted"
  end

  def edit
  	@edit_picture = Picture.find(params[:id])
  
  end

  def update
  	update_picture = Picture.find(params[:id])
	  update_picture.source = params[:source]
  	update_picture.caption = params[:caption]
  	update_picture.save
    redirect_to "http://localhost:3000/picture_details/#{update_picture.id}", :notice => "Update picture successfully"
  end
end
