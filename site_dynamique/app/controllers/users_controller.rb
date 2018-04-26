class UsersController < ApplicationController
  def new
  end

  def create
  	user = User.new
  	user.username = params[:username].to_s
  	user.bio = params[:bio].to_s
  	user.save

  	if user.save == false
  		redirect_to erreur_path
  	else
		redirect_to profil_path(user.username)
	end
  end

  def show
  	@me = User.find_by(username: params[:username])	
  end

  def erreur
	end

end
