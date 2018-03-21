class UsersController < ApplicationController
  def index
  end

  def new
    @new = User.new
  end

  def create
    @new = User.new(new_user)
    if @new.save
      redirect_to 'home'
    else
      render 'users/new'
    end
  end

  private
  def new_user
    params.require(:user).permit(:name)    
  end
end
