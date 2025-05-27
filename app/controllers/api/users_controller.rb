class Api::UsersController < ApplicationController
  ALLOWED_FIELDS = %w[id first_name last_name email created_at]

  def index
    @fields = params[:fields]&.select { |f| ALLOWED_FIELDS.include?(f) } || ALLOWED_FIELDS
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
