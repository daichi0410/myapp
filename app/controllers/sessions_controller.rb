class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create, :destroy]

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_to admin_root_path
    else
      flash[:alert] = 'ログイン失敗'
      render :new
    end
  end

  def destory
    logout
    redirect_to(root_url, notice: 'ログアウトしました')
  end
end