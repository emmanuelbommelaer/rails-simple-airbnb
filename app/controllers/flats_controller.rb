class FlatsController < ApplicationController
  def index
    if params[:query] != ""
      raise
      @flats = Flat.where("name LIKE '%#{@query}%'")
    else
      @flats = Flat.all
    end
  end

  def new
    @flat = Flat.new
  end
end
