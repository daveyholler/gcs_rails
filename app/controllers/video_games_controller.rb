class VideoGamesController < ApplicationController
  def index
    page = params.has_key?(:page) ? params[:page].to_i : 1
    max = params.has_key?(:max) ? params[:max].to_i : 25
    offset = (page - 1) * max
    if params.has_key?(:platform)
      @video_games = VideoGame.where('platform = ?', params[:platform]).limit(max).offset(offset)
    else
      @video_games = VideoGame.limit(max).offset(offset)
    end

    @response = {
      _meta: {
        totalCount: VideoGame.all.count,
        totalPages: VideoGame.all.count / max,
        currentPage: page,
        pageSize: max
      },
      games: @video_games
    }

    render json: @response, status: 200
  end
end
