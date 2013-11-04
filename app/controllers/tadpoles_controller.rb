class TadpolesController < ApplicationController
  before_action :set_tadpole, only: [:show, :edit, :update, :destroy, :evolve]

  def index
    @tadpoles = Tadpole.all
  end

  def show
  end

  def new
    @frog = Frog.find_by(id: params[:id])
    @tadpole = Tadpole.new
  end

  def edit
  end

  def create
    @tadpole = Tadpole.new(tadpole_params)
    respond_to do |format|
      if @tadpole.save
        format.html { redirect_to @tadpole, notice: 'Tadpole was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tadpole }
      else
        format.html { render action: 'new' }
        format.json { render json: @tadpole.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @tadpole.update(tadpole_params)
        format.html { redirect_to @tadpole, notice: 'Tadpole was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tadpole.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tadpole.destroy
    respond_to do |format|
      format.html { redirect_to tadpoles_url }
      format.json { head :no_content }
    end
  end

  def evolve
    Frog.create(name: @tadpole.name, color: @tadpole.color, 
      pond_id: Frog.find_by(id: @tadpole.frog_id).pond_id)

    @tadpole.destroy
    redirect_to @tadpole
  end

  private
    # Always run this line before above actions
    def set_tadpole
      @tadpole = Tadpole.find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tadpole_params
      params.require(:tadpole).permit(:name, :color, :frog_id)
    end
end