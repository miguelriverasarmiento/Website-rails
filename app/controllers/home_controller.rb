class HomeController < ApplicationController
   skip_before_action :verify_authenticity_token

   def index
      @user = User.new
   end

   def create
      @user = User.new(user_params)
         @user.save
         respond_to do |format|
            format.js
            format.json
         end
      end
   end   
private
   def user_params
      params.require(:user).permit(:nombre, :email)
   end
