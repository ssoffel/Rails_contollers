class SuperheroesController < ApplicationController

  def index
    render json: Superhero.all
    #return all superheros from model
  end

  def show
    superhero = Superhero.find_by(id: params[:id])
    #whatever is in place if id in url id will have that as key

    render json: superhero
  end

  def update
    superhero = Superhero.find_by(id: params[:id])
    #can not call update with actuall params object, so we put wht we want in superhero variable
    if superhero.update(superhero_params)
      render json: superhero
    else
      render json: superhero.errors.full_messages, status: :unprocessable_entity
    end
  end



  def destroy
    superhero = Superhero.find_by(id: params[:id])

    if superhero.destroy
      render json: superhero
    else
      render json: "Can't destory this superhero, too important"
    end
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :secret_identity, :power)
    #its going to expect that params has a key of :superhero
  end


end
