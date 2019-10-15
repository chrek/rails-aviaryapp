class AviariesController < ApplicationController
  before_action :set_aviary, only: [:show, :edit, :update, :destroy]

  # GET /aviaries
  # GET /aviaries.json
  def index
    @aviaries = Aviary.all
  end

  # GET /aviaries/1
  # GET /aviaries/1.json
  def show
  end

  # GET /aviaries/new
  def new
    @aviary = Aviary.new
  end

  # GET /aviaries/1/edit
  def edit
  end

  # POST /aviaries
  # POST /aviaries.json
  def create
    @aviary = Aviary.new(aviary_params)

    respond_to do |format|
      if @aviary.save
        format.html { redirect_to @aviary, notice: 'Aviary was successfully created.' }
        format.json { render :show, status: :created, location: @aviary }
      else
        format.html { render :new }
        format.json { render json: @aviary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aviaries/1
  # PATCH/PUT /aviaries/1.json
  def update
    respond_to do |format|
      if @aviary.update(aviary_params)
        format.html { redirect_to @aviary, notice: 'Aviary was successfully updated.' }
        format.json { render :show, status: :ok, location: @aviary }
      else
        format.html { render :edit }
        format.json { render json: @aviary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aviaries/1
  # DELETE /aviaries/1.json
  def destroy
    @aviary.destroy
    respond_to do |format|
      format.html { redirect_to aviaries_url, notice: 'Aviary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aviary
      @aviary = Aviary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aviary_params
      params.require(:aviary).permit(:name, :description)
    end
end
