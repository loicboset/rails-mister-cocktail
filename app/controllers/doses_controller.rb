class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    cocktail = Cocktail.find(params[:cocktail_id])
    ingredient = Ingredient.find(params[:dose][:ingredient_id])
    # ingredient = cocktail.doses.find(@dose.id)
    @dose.cocktail = cocktail
    @dose.ingredient = ingredient
    @dose.save
    redirect_to cocktails_path
  end

  private

    def dose_params
      params.require(:dose).permit(:description, :ingredient)
    end
end
