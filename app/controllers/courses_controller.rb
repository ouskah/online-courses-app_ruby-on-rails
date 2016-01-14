class CoursesController < ApplicationController
  
    def index
        @courses = Course.all
    end

    def show
    	@course = Course.find_by_slug(params[:slug])
    		

    		if @course.nil?

    			flash[:message] = "Aucun cours trouvé pour cette url  !"
    			redirect_to root_path

    		end

    end




end
