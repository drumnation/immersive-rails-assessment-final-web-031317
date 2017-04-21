class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def edit
    set_appearance
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to @appearance.episode
    else
      redirect_to new_appearance_path
    end
  end

  def update
    set_appearance
    if @apperance.update(appearance_params)
      redirect_to new_appearance_path
    else
      render 'edit'
    end
  end

  private

  def set_appearance
    @appearance = Appearance.find(params[:id])
  end

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
