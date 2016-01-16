class EpisodesController < ApplicationController
  before_action :authenticate_user!, only: [:show]


  def show
  
  	@episode = Episode.joins(:course)
  						.where(
  							"courses.slug" => params[:slug_course],
  							"slug" => params[:slug_episode]
  							).first

		
	if @episode.nil?
		flash[:message] = "Aucun épisode trouvé pour cette url  !"
    	redirect_to root_path
	end

  end
end
