class NotesController < ApplicationController
  def index 
  end

  def new
    @user = User.find(params[:user_id])
    @note = @user.notes.build
  end

  def create
    @user = User.find(params[:user_id])
    @note = @user.notes.build.new_note
    if @note.save
      redirec_to 'users'
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:user_id])
    @note = @user.notes
  end

  private
  def new_note
    params.require(:notes).permit(:content)
  end

  
end
