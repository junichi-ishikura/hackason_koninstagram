class CustomizesController < ApplicationController
  before_action :set_customize, only: [:show, :edit, :update, :destroy]

  # GET /customizes
  # GET /customizes.json
  def index
    @customizes = Customize.all
  end

  # GET /customizes/1
  # GET /customizes/1.json
  def show
  end

  # GET /customizes/new
  def new
    @customize = Customize.new
    @colors = Color.all
    @materials = Material.all
    @wakus = Waku.all
    @customize.user_id = 1
  end

  # GET /customizes/1/edit
  def edit
  end

  # POST /customizes
  # POST /customizes.json
  def create
    binding.pry
    @customize = Customize.new(customize_params)

    respond_to do |format|
      if @customize.save
        format.html { redirect_to @customize, notice: 'Customize was successfully created.' }
        format.json { render :show, status: :created, location: @customize }
      else
        format.html { render :new }
        format.json { render json: @customize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customizes/1
  # PATCH/PUT /customizes/1.json
  def update
    respond_to do |format|
      if @customize.update(customize_params)
        format.html { redirect_to @customize, notice: 'Customize was successfully updated.' }
        format.json { render :show, status: :ok, location: @customize }
      else
        format.html { render :edit }
        format.json { render json: @customize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customizes/1
  # DELETE /customizes/1.json
  def destroy
    @customize.destroy
    respond_to do |format|
      format.html { redirect_to customizes_url, notice: 'Customize was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customize
      @customize = Customize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customize_params
      params.require(:customize).permit(:color, :material, :waku, :user_id, :color_id, :material_id, :waku_id)
    end
end
