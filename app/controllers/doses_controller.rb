class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(params[:dose][:ingredient_id])
    @dose = Dose.new
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient
    @dose.description = params[:dose][:description]
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:content, :rating)
  end
end
