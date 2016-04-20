class StalkeesController < ApplicationController
	before_action :get_stalkee, only:[:show, :edit, :update, :destroy]

	def index
		@stalkees= Stalkee.all.order("created_at DESC");
	end

	def show
		$client.user_timeline("gem") 
		@tweets = $client.user_timeline(@stalkee.twitter_handle, {:count => 200})
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
		if @stalkee.update(stalkee_params)
			redirect_to @stalkee
		else
			render 'edit'
		end
	end

	def destroy
		@stalkee.destroy
		redirect_to stalkees_path
	end


	private
		def stalkee_params
			params.require(:stalkee).permit(:twitter_handle)
		end

		def get_stalkee
			@stalkee=Stalkee.find(params[:id])
		end
end