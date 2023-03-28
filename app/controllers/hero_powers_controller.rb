class HeroPowersController < ApplicationController
  before_action :set_hero_power, only: %i[ show edit update destroy ]

  # GET /hero_powers or /hero_powers.json
  def index
    @hero_powers = HeroPower.all
  end

  # GET /hero_powers/1 or /hero_powers/1.json
  def show
  end

  # GET /hero_powers/new
  def new
    @hero_power = HeroPower.new
  end

  # GET /hero_powers/1/edit
  def edit
  end

  # POST /hero_powers or /hero_powers.json
  def create
    @hero_power = HeroPower.new(hero_power_params)

    respond_to do |format|
      if @hero_power.save
        format.html { redirect_to hero_power_url(@hero_power), notice: "Hero power was successfully created." }
        format.json { render :show, status: :created, location: @hero_power }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hero_power.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hero_powers/1 or /hero_powers/1.json
  def update
    respond_to do |format|
      if @hero_power.update(hero_power_params)
        format.html { redirect_to hero_power_url(@hero_power), notice: "Hero power was successfully updated." }
        format.json { render :show, status: :ok, location: @hero_power }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hero_power.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hero_powers/1 or /hero_powers/1.json
  def destroy
    @hero_power.destroy

    respond_to do |format|
      format.html { redirect_to hero_powers_url, notice: "Hero power was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hero_power
      @hero_power = HeroPower.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hero_power_params
      params.require(:hero_power).permit(:strength, :user_id)
    end
end
