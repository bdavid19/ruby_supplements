class FoodsupplementsController < ApplicationController
  before_action :set_foodsupplement, only: %i[ show edit update destroy ]

  # GET /foodsupplements or /foodsupplements.json
  def index
     @foodsupplements = Foodsupplement.all
  end

  # GET /foodsupplements/1 or /foodsupplements/1.json
  def show
  end

  # GET /foodsupplements/new
  def new
    @foodsupplement = Foodsupplement.new
  end

  # GET /foodsupplements/1/edit
  def edit
  end

  # POST /foodsupplements or /foodsupplements.json
  def create
    @foodsupplement = Foodsupplement.new(foodsupplement_params)

    respond_to do |format|
      if @foodsupplement.save
        format.html { redirect_to @foodsupplement, notice: "Foodsupplement was successfully created." }
        format.json { render :show, status: :created, location: @foodsupplement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foodsupplement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodsupplements/1 or /foodsupplements/1.json
  def update
    respond_to do |format|
      if @foodsupplement.update(foodsupplement_params)
        format.html { redirect_to @foodsupplement, notice: "Foodsupplement was successfully updated." }
        format.json { render :show, status: :ok, location: @foodsupplement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foodsupplement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodsupplements/1 or /foodsupplements/1.json
  def destroy
    @foodsupplement.destroy
    respond_to do |format|
      format.html { redirect_to foodsupplements_url, notice: "Foodsupplement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodsupplement
      @beepasture = Beepasture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foodsupplement_params
      params.require(:foodsupplement).permit(:name, :price, :category, :rating, :articlenum)
    end
end
