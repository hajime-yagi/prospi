class UserSessionsController < ApplicationController
  def new
  end

  def create
    @user = login(params[:name], params[:password])

    if @user
      redirect_back_or_to(users_path, success: 'ログインに成功しました')
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end

  def destroy
    logout
    redirect_to(login_path, warning: 'ログアウトしました')
  end
end