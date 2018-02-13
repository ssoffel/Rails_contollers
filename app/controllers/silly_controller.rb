
class SillyController < ApplicationController

  def fun
    render plain: params[:message]
  end

  def time
    render json: params
  end

  def super
    render json: params
  end
  

end


#json a way of sending formated data
