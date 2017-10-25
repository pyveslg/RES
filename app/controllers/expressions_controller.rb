class ExpressionsController < ApplicationController

  def new
    @mfe = MonFrenchExpresso.find(params[:mon_french_expresso_id])
    @expression = Expression.new
  end

  def create
    @expression = Expression.new(expression_params)
    @expression.mon_french_expresso = MonFrenchExpresso.find(params[:mon_french_expresso_id])
    @expression.save
    redirect_to mon_french_expresso_path(@expression.mon_french_expresso)
  end

  private

  def expression_params
    params.require(:expression).permit(:expfr, :expen)
  end

end
