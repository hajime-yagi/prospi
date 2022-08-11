class UsersController < ApplicationController

  def index
    @users = User.all
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
      flash[:success] = 'ユーザーの作成に成功しました'
    else
      flash.now[:danger] = 'ユーザーの作成に失敗しました'
      render :new
    end
  end


private

def user_params
  params.require(:user).permit(:name, :password, :password_confirmation)
end

end
