class SoundtracksController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @sounds = Sound.all
  end

  def show
    @sound = GuaranteedSound.find(params[:id], params[:format])
  end
end
