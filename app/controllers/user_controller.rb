class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "/"
    else
      flash[:error] = "重複的name。"
      redirect_to "/signup"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
