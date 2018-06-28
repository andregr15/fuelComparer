class PagesController < ApplicationController
  def index
  end 

  def compare
    gasoline = params[:gasoline].to_f
    ethanol = params[:ethanol].to_f

    res = CompareService.new(gasoline, ethanol).perform
    render json: { "value": res }
  end
end
