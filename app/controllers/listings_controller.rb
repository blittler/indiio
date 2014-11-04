class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @listings = Listing.all
  end

  def show
  end

  def new
    @listing = current_user.listings.build
  end

  def edit
  end

  def create
    @listing = current_user.listings.build(listing_params)
    if @listing.save
      redirect_to @listing, notice: 'Listing was successfully created.'
    else
      render action: 'new'
    end
   end

  def update
    if @listing.update(listing_params)
      redirect_to @listing, notice: 'Listing was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @listing.destroy
    redirect_to listings_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:description)
    end
end
