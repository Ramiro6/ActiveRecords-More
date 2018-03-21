class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.where(id: params[:id])
    @note = @user.notes
  end

  def new
    @new = User.new
  end

  def create
    @new = User.new(new_user)
    if @new.save
      redirect_to '/'
    else
      render 'users/new'
    end
  end

  def destroy
    @user.delete
  end

  private
  def new_user
    params.require(:user).permit(:name)    
  end
end
