class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
    @user = User.new
  end

  def show
  end

  def forgotten
    @user = User.new
    @user.id = 1
    @user.username = 'senki'
    @user.email = 'senki@mail.bme.hu'
    @user.password = 'titok'
  end
end
