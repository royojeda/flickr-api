class PagesController < ApplicationController
  def index
    @flickr = Flickr.new Figaro.env.flickr_api_key, Figaro.env.flickr_api_secret
    @photos = @flickr.people.getPhotos user_id: params[:user_id] if params[:user_id]
  end
end
