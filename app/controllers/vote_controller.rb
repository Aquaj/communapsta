# Handles votes.
class VoteController < ApplicationController
  def create
    Vote.create(track_id: vote_params[:track_id])
  end

  protected

  def vote_params
    params.require(:track_id)
  end
end
