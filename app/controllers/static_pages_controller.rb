class StaticPagesController < ApplicationController
  def home
  end

  def findwifi
    unless user_signed_in?
      flash[:error] = 'You must login first to Find a Wifi spot near you.'
      redirect_to signin_path 
    end
  end

  def about
  end

  def contact
  end
end
