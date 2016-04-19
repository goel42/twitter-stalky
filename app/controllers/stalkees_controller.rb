class StalkeesController < ApplicationController
	before_action :get_stalkee, only:[:show, :edit, :update, :destroy]

	def index
		@stalkees= Stalkee.all.order("created_at DESC");
	end

	def show
	end

	def new
		@stalkee = Stalkee.new
	end

	def edit
	end

	def create
		@stalkee=Stalkee.new(stalkee_params)
		if @stalkee.save
			redirect_to @stalkee
		else
			render 'new'
		end
	end

	def update
		if @user.update(stalkee_params)
			redirect_to @stalkee
		else
			render 'edit'
		end
	end

	def destroy
		@stalkee.destroy
	end


	private
		def stalkee_params
			params.require(:stalkee).permit(:twitter_handle)
		end

		def before_action
			@stalkee=Stalkee.find(params[:id])
		end
end