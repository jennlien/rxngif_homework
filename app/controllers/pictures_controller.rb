class PicturesController < ApplicationController
  def show
  	@id = params[:id]
  	@p = Picture.find(params[:id])
  end
end
