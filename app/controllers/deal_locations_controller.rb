class DealLocationsController < ApplicationController
  # GET /deal_locations
  # GET /deal_locations.json
  def index
    @deal_locations = DealLocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deal_locations }
    end
  end

  # GET /deal_locations/1
  # GET /deal_locations/1.json
  def show
    @deal_location = DealLocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @deal_location }
    end
  end

  # GET /deal_locations/new
  # GET /deal_locations/new.json
  def new
    @deal_location = DealLocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @deal_location }
    end
  end

  # GET /deal_locations/1/edit
  def edit
    @deal_location = DealLocation.find(params[:id])
  end

  # POST /deal_locations
  # POST /deal_locations.json
  def create
    @deal_location = DealLocation.new(params[:deal_location])

    respond_to do |format|
      if @deal_location.save
        format.html { redirect_to @deal_location, notice: 'Deal location was successfully created.' }
        format.json { render json: @deal_location, status: :created, location: @deal_location }
      else
        format.html { render action: "new" }
        format.json { render json: @deal_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /deal_locations/1
  # PUT /deal_locations/1.json
  def update
    @deal_location = DealLocation.find(params[:id])

    respond_to do |format|
      if @deal_location.update_attributes(params[:deal_location])
        format.html { redirect_to @deal_location, notice: 'Deal location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @deal_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deal_locations/1
  # DELETE /deal_locations/1.json
  def destroy
    @deal_location = DealLocation.find(params[:id])
    @deal_location.destroy

    respond_to do |format|
      format.html { redirect_to deal_locations_url }
      format.json { head :no_content }
    end
  end
end
