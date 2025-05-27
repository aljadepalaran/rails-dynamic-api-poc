class Api::UsersController < ApplicationController
  def index
    @users = User.select(params[:fields]).all
    @fields = params[:fields] || User.column_names
  end
end
