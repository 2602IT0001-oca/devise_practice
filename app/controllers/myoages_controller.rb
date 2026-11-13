class MyoagesController < ApplicationController
  before_actopm :require_login
  def show
  end

  private

  def require_login
    unless user_signed_in?
      redirect_to root_path,
        alaert:"ログインしてください。"
    end
  end
end
