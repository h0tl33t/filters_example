class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if user.save
      redirect_to users_path, notice: 'User saved.'
    else
      flash.now[:error] = user.errors.full_messages.join('; ')
      render 'new'
    end
  end

  def edit
  end

  def update
    if user.update_attributes(user_params)
      redirect_to users_path, notice: 'User updated.'
    else
      flash.now[:error] = user.errors.full_messages.join('; ')
      render 'edit'
    end
  end

  def show
  end

  def index
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone)
  end

  def query_params
    if params[:q].present?
      params[:q].delete_if do |query, value|
        value.blank?
      end
    end
  end

  def search
    @search ||= User.search(query_params)
  end
  helper_method :search

  def user
    @user ||= User.find(params[:id])
  end
  helper_method :user

  def users
    @users ||= search.result
  end
  helper_method :users
end
