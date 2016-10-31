# Handles Tracks
class TrackController < ApplicationController
  def index
    @tracks = Track.all
  end

  def create
    @track = Track.find_on_napster(track_params[:title])
    @state = @track && @track.save ? :success : :failure
    render :js
  end

  protected

  def track_params
    params.require(:track).permit(:title)
  end
end
