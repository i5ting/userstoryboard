class CategoryController < ApplicationController
  def index
    @categories = Category.all
    
    respond_to do |format|
      format.html
    end
  end
  
  def new
    @category = Category.new
    
    respond_to do |format|
      format.html
    end
  end
  
  # GET /category/1/edit
  def edit
    @category = Category.find(params[:id])
  end
  
  
  def create
    @category = Category.new(params[:category])
     
    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: '@category was successfully created.' }
        format.json { render json: @category, status: :created, location: @category }
      else
        format.html { render action: "new" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  def update
    @category = Category.new(params[:category])
    
    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to @category, notice: '@category was successfully edit.' }
        format.json { render json: @category, status: :created, location: @category }
      else
        format.html { render action: "edit" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
      
    end
  end
  
  # GET /demoscaffolds/1
  # GET /demoscaffolds/1.json
  def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @demoscaffold }
    end
  end
  
  # DELETE /demoscaffolds/1
  # DELETE /demoscaffolds/1.json
  def destroy
    @demoscaffold = Category.find(params[:id])
    @demoscaffold.destroy

    respond_to do |format|
      format.html { redirect_to :action => 'index' }
      format.json { head :no_content }
    end
  end
    
end
