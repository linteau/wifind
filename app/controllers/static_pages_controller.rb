class StaticPagesController < ApplicationController
  def home
  end

  def findwifi
    redirect_to signup_path unless user_signed_in?
  end

  def about
  end

  def contact
  end
end
