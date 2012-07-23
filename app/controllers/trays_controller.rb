class TraysController < ApplicationController
  # GET /trays
  # GET /trays.json
  def index
    @trays = Tray.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trays }
    end
  end

  # GET /trays/1
  # GET /trays/1.json
  def show
    @tray = Tray.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tray }
    end
  end

  # GET /trays/new
  # GET /trays/new.json
  def new
    @tray = Tray.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tray }
    end
  end

  # GET /trays/1/edit
  def edit
    @tray = Tray.find(params[:id])
  end

  # POST /trays
  # POST /trays.json
  def create
    @tray = Tray.new(params[:tray])

    respond_to do |format|
      if @tray.save
        format.html { redirect_to @tray, notice: 'Tray was successfully created.' }
        format.json { render json: @tray, status: :created, location: @tray }
      else
        format.html { render action: "new" }
        format.json { render json: @tray.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trays/1
  # PUT /trays/1.json
  def update
    @tray = Tray.find(params[:id])

    respond_to do |format|
      if @tray.update_attributes(params[:tray])
        format.html { redirect_to @tray, notice: 'Tray was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tray.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trays/1
  # DELETE /trays/1.json
  def destroy
    @tray = Tray.find(params[:id])
    @tray.destroy

    respond_to do |format|
      format.html { redirect_to trays_url }
      format.json { head :no_content }
    end
  end
end
