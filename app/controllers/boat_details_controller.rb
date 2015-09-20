class BoatDetailsController < ApplicationController
  before_action :set_boat_detail, only: [:show, :edit, :update, :destroy]

  # GET /boat_details
  # GET /boat_details.json
  def index
    @boat_details = BoatDetail.all
  end

  # GET /boat_details/1
  # GET /boat_details/1.json
  def show
  end

  # GET /boat_details/new
  def new
    @boat_detail = BoatDetail.new
  end

  # GET /boat_details/1/edit
  def edit
  end

  # POST /boat_details
  # POST /boat_details.json
  def create
    @boat_detail = BoatDetail.new(boat_detail_params)

    respond_to do |format|
      if @boat_detail.save
        format.html { redirect_to @boat_detail, notice: 'Boat detail was successfully created.' }
        format.json { render :show, status: :created, location: @boat_detail }
      else
        format.html { render :new }
        format.json { render json: @boat_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boat_details/1
  # PATCH/PUT /boat_details/1.json
  def update
    respond_to do |format|
      if @boat_detail.update(boat_detail_params)
        format.html { redirect_to @boat_detail, notice: 'Boat detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @boat_detail }
      else
        format.html { render :edit }
        format.json { render json: @boat_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_details/1
  # DELETE /boat_details/1.json
  def destroy
    @boat_detail.destroy
    respond_to do |format|
      format.html { redirect_to boat_details_url, notice: 'Boat detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat_detail
      @boat_detail = BoatDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boat_detail_params
      params.require(:boat_detail).permit(:boat_make, :boat_manufacturing_code, :boat_model, :boat_color)
    end
end
