class Episode < ActiveRecord::Base
  
	# default_scope {order(:position)} si option choisie alors dans courses/show.html.erb
										# saisir : <% @course.episodes.each do |episode| %> car le scope par défault est actionné

	belongs_to :course
end
