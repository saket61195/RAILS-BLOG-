class Admin::ModeratorsController < ApplicationController
	def index
		@moderators = Moderator.all
	end
	
	def edit
		@moderator = Moderator.find(params[:id])
	end
	
	def update
		@moderator = Moderator.find(params[:id])
		if @moderator.update(moderator_params)
			flash[:notice] = "moderator succesfully updates"
			redirect_to admin_moderators_path
		else
			flash[:alert]= "moderator has problem to update"
			render 'edit'
		end
	end

	private
	def moderator_params
		params.require(:moderator).permit(:id,:fullname,:username,:password)
	end


end