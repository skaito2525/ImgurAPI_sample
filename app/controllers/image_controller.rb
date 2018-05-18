class ImageController < ApplicationController

  def index
    @images = Image.all
  end

  def form
  end

  def upload
    url = Imgur.new("5121ce986584a71").anonymous_upload(params[:image])
    image = Image.new(name: params[:name], image_url: url)
    image.save
    redirect_to("/")
  end

end
