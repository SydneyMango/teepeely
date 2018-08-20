class ResortsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_resort, only: [:show, :edit, :update, :destroy]

  def index
    @resorts = Resort.where.not(latitude: nil, longitude: nil)


    if params[:location].present?
      sql_query = "country ILIKE :location OR continent ILIKE :location"
      @resorts = @resorts.where(sql_query, location: "%#{params[:location]}%")
    end

    if params[:feature].present?
       sql_query = "features.name ILIKE :feature"
      @resorts = @resorts.joins(:features).where(sql_query, feature: "%#{params[:feature]}%")
    end

      @markers = @resorts.map do |resort|
    {
      lat: resort.latitude,
      lng: resort.longitude
    }
    end
  end

  # def show
  #   @booking = Booking.new
  # end

  # def favourite
  #   type = params[:type]
  #   if type == "favourite"
  #     current_user.favourites << @resort
  #     redirect_to :back, notice: "You favourited #{@resort.name}"

  #   elsif type == "unfavourite"
  #     current_user.favourites.delete(@resort)
  #     redirect_to :back, notice: "Unfavourited #{@resort.name}"

  #   else
  #     # Type missing, nothing happens
  #     redirect_to :back, notice: 'Nothing happened.'
  #   end
  # end


  private

  def set_resort
    @resort = Resort.find(params[:id])
    authorize @resort
  end

  def resort_params
    params.require(:resort).permit(:name, :continent, :country, :address, :price, :description )
  end
end

