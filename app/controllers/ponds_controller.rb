class PondsController < ApplicationController
  before_action :set_pond, only: [:show, :edit, :update, :destroy]

  def index
    @ponds = Pond.all
  end

  def show
  end

  def new
    @pond = Pond.new
  end

  def edit
  end

  def create
    @pond = Pond.new(pond_params)

    respond_to do |format|
      if @pond.save
        format.html { redirect_to @pond, notice: 'Pond was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pond }
      else
        format.html { render action: 'new' }
        format.json { render json: @pond.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pond.update(pond_params)
        format.html { redirect_to @pond, notice: 'Pond was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pond.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pond.destroy
    respond_to do |format|
      format.html { redirect_to ponds_url }
      format.json { head :no_content }
    end
  end

  private
    # Always run this line before above actions
    def set_pond
      @pond = Pond.find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pond_params
      params.require(:pond).permit(:name, :water_type)
    end
end