class InstagramMediaController < ApplicationController
  before_action :set_instagram_medium, only: %i[ show update destroy ]

  # GET /instagram_media
  def index
    @instagram_media = InstagramMedium.all.limit(10)

    render json: @instagram_media
  end

  # GET /instagram_media/1
  def show
    render json: @instagram_medium
  end

  # POST /instagram_media
  def create
    @instagram_medium = InstagramMedium.new(instagram_medium_params)

    if @instagram_medium.save
      render json: @instagram_medium, status: :created, location: @instagram_medium
    else
      render json: @instagram_medium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /instagram_media/1
  def update
    if @instagram_medium.update(instagram_medium_params)
      render json: @instagram_medium
    else
      render json: @instagram_medium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /instagram_media/1
  def destroy
    @instagram_medium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instagram_medium
      @instagram_medium = InstagramMedium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def instagram_medium_params
      params.require(:instagram_medium).permit(:like_count, :media_type, :media_url, :id_media, :comments_count, :timestamp)
    end
end
