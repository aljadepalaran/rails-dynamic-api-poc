class Api::UsersController < ApplicationController
  def index
    @fields = params[:fields] || User.column_names
    @users = User.select(@fields).page(page).per(per_page)
  end

  private

  def per_page
    params[:per_page] || 20
  end

  def page
    params[:page] || 1
  end
end
