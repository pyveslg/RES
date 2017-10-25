class MonFrenchExpressosController < ApplicationController
  before_action :set_mfe, only:[:show, :edit, :update]

  def index
    @mfes = MonFrenchExpresso.all
  end

  def show
    @mfe = MonFrenchExpresso.find(params[:id])
  end

  def new
    @mfe = MonFrenchExpresso.new
  end

  def create
    @mfe = MonFrenchExpresso.new(mfe_params)
    @mfe.save
    redirect_to mon_french_expresso_path(@mfe)
  end

  def edit

  end

  def update
    @mfe.update(mfe_params)
    @mfe.save
    redirect_to mon_french_expresso_path(@mfe)
  end

  private

  def mfe_params
    params.require(:mon_french_expresso).permit(:intro, :learn, :question1, :option1, :option2, :answer, :rulefr, :ruleen, :question2, :color )
  end

  def set_mfe
    @mfe = MonFrenchExpresso.find(params[:id])
  end

end
