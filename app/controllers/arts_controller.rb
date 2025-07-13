class ArtsController < ApplicationController
  def index
    response = HTTP.get("https://api.artic.edu/api/v1/artworks")
    data = JSON.parse(response.body)
    render json: data
  end
end
