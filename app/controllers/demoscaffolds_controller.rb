class DemoscaffoldsController < ApplicationController
  # GET /demoscaffolds
  # GET /demoscaffolds.json
  def index
    @demoscaffolds = Demoscaffold.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @demoscaffolds }
    end
  end

  # GET /demoscaffolds/1
  # GET /demoscaffolds/1.json
  def show
    @demoscaffold = Demoscaffold.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @demoscaffold }
    end
  end

  # GET /demoscaffolds/new
  # GET /demoscaffolds/new.json
  def new
    @demoscaffold = Demoscaffold.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @demoscaffold }
    end
  end

  # GET /demoscaffolds/1/edit
  def edit
    @demoscaffold = Demoscaffold.find(params[:id])
  end

  # POST /demoscaffolds
  # POST /demoscaffolds.json
  def create
    @demoscaffold = Demoscaffold.new(params[:demoscaffold])

    respond_to do |format|
      if @demoscaffold.save
        format.html { redirect_to @demoscaffold, notice: 'Demoscaffold was successfully created.' }
        format.json { render json: @demoscaffold, status: :created, location: @demoscaffold }
      else
        format.html { render action: "new" }
        format.json { render json: @demoscaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /demoscaffolds/1
  # PUT /demoscaffolds/1.json
  def update
    @demoscaffold = Demoscaffold.find(params[:id])

    respond_to do |format|
      if @demoscaffold.update_attributes(params[:demoscaffold])
        format.html { redirect_to @demoscaffold, notice: 'Demoscaffold was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @demoscaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demoscaffolds/1
  # DELETE /demoscaffolds/1.json
  def destroy
    @demoscaffold = Demoscaffold.find(params[:id])
    @demoscaffold.destroy

    respond_to do |format|
      format.html { redirect_to demoscaffolds_url }
      format.json { head :no_content }
    end
  end
end
