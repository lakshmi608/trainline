class SegmentsController < ApplicationController
  def index
    from = params[:from] || "London"
    to = params[:to] || "Paris"
    departure_at = DateTime.parse(params[:departure_at]) rescue DateTime.now
    debugger
    @segments = TrainlineBot.find(from, to, departure_at)
  end
end
