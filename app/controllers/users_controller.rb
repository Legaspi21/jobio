class UsersController < ApplicationController
  protect_from_forgery with: :exception

  def show
   @user = User.find(current_user.id)
   @task = @user.tasks.new
   @tasks = @user.tasks
  end 

end
