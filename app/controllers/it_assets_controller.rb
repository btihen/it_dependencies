class ItAssetsController < ApplicationController
  before_action :set_it_asset, only: [:show, :edit, :update, :destroy]

  # GET /it_assets
  # GET /it_assets.json
  def index
    @it_assets = ItAsset.all.with_associations(:needs)
  end

  # GET /it_assets/1
  # GET /it_assets/1.json
  def show
  end

  # GET /it_assets/new
  def new
    @it_asset = ItAsset.new
  end

  # GET /it_assets/1/edit
  def edit
  end

  # POST /it_assets
  # POST /it_assets.json
  def create
    @it_asset = ItAsset.new(it_asset_params)

    respond_to do |format|
      if @it_asset.save
        format.html { redirect_to @it_asset, notice: 'It asset was successfully created.' }
        format.json { render :show, status: :created, location: @it_asset }
      else
        format.html { render :new }
        format.json { render json: @it_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /it_assets/1
  # PATCH/PUT /it_assets/1.json
  def update
    respond_to do |format|
      if @it_asset.update(it_asset_params)
        format.html { redirect_to @it_asset, notice: 'It asset was successfully updated.' }
        format.json { render :show, status: :ok, location: @it_asset }
      else
        format.html { render :edit }
        format.json { render json: @it_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /it_assets/1
  # DELETE /it_assets/1.json
  def destroy
    @it_asset.destroy
    respond_to do |format|
      format.html { redirect_to it_assets_url, notice: 'It asset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_it_asset
      @it_asset = ItAsset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def it_asset_params
      params.require(:it_asset).permit(:category, :name, :need_ids => [])
    end
end
