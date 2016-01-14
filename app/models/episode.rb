class Episode < ActiveRecord::Base
  
	before_save :set_slug  # methode de callbabck

	# default_scope {order(:position)} si option choisie alors dans courses/show.html.erb
										# saisir : <% @course.episodes.each do |episode| %> car le scope par défault est actionné

	belongs_to :course


	private

		def set_slug
			self.slug = self.title.parameterize

		end


end
