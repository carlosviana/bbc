class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end	

	def update
		@user = User.find(params[:id])

		if @user.update(user_params)
			redirect_to @user, 
			  notice: 'Usuario editado com sucesso!'
		else
			render action: :edit
		end
	end

	def create
		@user = User.new(params[:user])

		if @user.save
			redirect_to @user, notice: 'Cadastro realizado com sucesso!'
		else
			render action: :new
		end
	end

	def edit_password
		@user = User.find(params[:id])
	end

	def update_password
		@user = User.find(current_user.id)
		
		if @user.update(user_params)
		    # Sign in the user by passing validation in case his password changed
		    sign_in @user, :bypass => true
		    redirect_to root_path
	  	else
	  		render "edit"
	  	end
	end

	def enabled
		@user = User.find(params[:id])

		if @user.enabled ==  false
			@user.update_attribute(:enabled,true) 
		else
			@user.update_attribute(:enabled,false) 
		end

		redirect_to users_path, notice: 'Alterado status do usuario!'
		
	end

private

	def user_params
		params.
		require(:user).
		permit(:email, :nome, :telefone, :password, :password_confirmation, :enabled)
	end
	
end