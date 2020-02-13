class DosesController < ApplicationController

def new
@cocktail = Cocktail.find(params[:cocktail_id])
@dose = Dose.new
end

def create
  @dose = Dose.new(review_params)
  @ingredient = Ingredient.find(params[:dose][:ingredient_id])
  @cocktail = Cocktail.find(params[:cocktail_id])
  @dose.cocktail = @cocktail
  @dose.ingredient = @ingredient
  @dose.save
  if @dose.save
    redirect_to cocktail_path(@cocktail)
  else
    render :new
  end
end

def destroy
  @dose = Dose.find(params[:id])
  @dose.destroy
  redirect_to dose_path(@dose.cocktail)
end

private

def review_params
  params.require(:dose).permit(:description)
  end
end
