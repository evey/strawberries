class StrawberriesController < ApplicationController
  def index
    @strawberries = Strawberry.all
  end
  
  def show
    @strawberry = Strawberry.find(params[:id])
  end
  
  def new
    @strawberry = Strawberry.new
  end
  
  def create
    @strawberry = Strawberry.new(params[:strawberry])
    if @strawberry.save
      flash[:notice] = "Successfully created strawberry."
      redirect_to @strawberry
    else
      render :action => 'new'
    end
  end
  
  def edit
    @strawberry = Strawberry.find(params[:id])
  end
  
  def update
    @strawberry = Strawberry.find(params[:id])
    if @strawberry.update_attributes(params[:strawberry])
      flash[:notice] = "Strawberry's color changed."
      redirect_to @strawberry
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @strawberry = Strawberry.find(params[:id])
    @strawberry.destroy  
    flash[:notice] = "Strawberry eaten!"    
    redirect_to strawberries_url
  end
end
