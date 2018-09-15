class OperatorsController < ApplicationController
  def index
    @operators = Operator.all.with_deleted.preload(:creator, :updater, :deleter)
  end
    
  def new
    @operator = Operator.new
  end

  def create
    Operator.create!(params.require(:operator).permit(:name))
    redirect_to action: :index
  end

  def edit
    @operator = Operator.find(params[:id])
  end

  def update
    Operator.find(params[:id]).update!(params.require(:operator).permit(:name))
    redirect_to action: :index
  end

  def destroy
    Operator.find(params[:id]).destroy!
    redirect_to action: :index
  end
end
