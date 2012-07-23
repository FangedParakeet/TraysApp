class PorcelainsController < ApplicationController
  # GET /porcelains
  # GET /porcelains.json
  def index
    @porcelains = Porcelain.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @porcelains }
    end
  end

  # GET /porcelains/1
  # GET /porcelains/1.json
  def show
    @porcelain = Porcelain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @porcelain }
    end
  end

  # GET /porcelains/new
  # GET /porcelains/new.json
  def new
    @porcelain = Porcelain.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @porcelain }
    end
  end

  # GET /porcelains/1/edit
  def edit
    @porcelain = Porcelain.find(params[:id])
  end

  # POST /porcelains
  # POST /porcelains.json
  def create
    @porcelain = Porcelain.new(params[:porcelain])

    respond_to do |format|
      if @porcelain.save
        format.html { redirect_to @porcelain, notice: 'Porcelain was successfully created.' }
        format.json { render json: @porcelain, status: :created, location: @porcelain }
      else
        format.html { render action: "new" }
        format.json { render json: @porcelain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /porcelains/1
  # PUT /porcelains/1.json
  def update
    @porcelain = Porcelain.find(params[:id])

    respond_to do |format|
      if @porcelain.update_attributes(params[:porcelain])
        format.html { redirect_to @porcelain, notice: 'Porcelain was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @porcelain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /porcelains/1
  # DELETE /porcelains/1.json
  def destroy
    @porcelain = Porcelain.find(params[:id])
    @porcelain.destroy

    respond_to do |format|
      format.html { redirect_to porcelains_url }
      format.json { head :no_content }
    end
  end
end
