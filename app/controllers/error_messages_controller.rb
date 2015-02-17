class ErrorMessagesController < ApplicationController
	 before_action :find_error_message, only: [:show, :edit, :update, :destroy]
	 before_action :authenticate_user!, except: [:index, :show]

	def index
		@errors = ErrorMessage.all
		@error = ErrorMessage.new
	end

	def show

  end



	 def create
		 @error = current_user.error_messages.build(error_message_params)

		 if @error.save
			 redirect_to @error, "Succesfully added a new error message"
		 else
			 render 'new'
		 end
	 end


	 def edit

	 end

	def show
	  @error = ErrorMessage.find(params[:id])
	end

	 def update
		 if @error_message.update(error_message_params)
			 redirect_to @error_message
		 else
			 render 'edit'
		 end
	 end

	 def destroy
		 @error_message.destroy
		 redirect_to root_path, notice: "Successfully deleted error_message"
	 end

	 private

	 def error_message_params
		 params.require(:error_message).permit(:title, :description, :image, ingredients_attributes: [:id, :name, :_destroy], directions_attributes: [:id, :step, :_destroy])
	 end

	 def find_error_message
		 @error_message = ErrorMessage.find(params[:id])
	 end

end
