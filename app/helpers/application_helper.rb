module ApplicationHelper

	def page_title(title)

		base_title = "Online Courses"

		if (title.empty?)
			return base_title
		else
			"#{title} - #{base_title}"
		end
	end


end
