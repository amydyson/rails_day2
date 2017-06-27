class PasswordController < ApplicationController
  def check
    @user_id = params[:user_id] unless params[:user_id].nil?
    # @user_name = user_name
    @password = params[:password]

    if !@user_id.nil? && !@password.nil? #wait until user types something in

#check for length
      case
      when @user_id == @password
        flash.now[:notice] = "Your user id and password must be different"
      when @user_id.length < 6
       flash.now[:notice] = "Your user id must be at least 6 characters"
      when @user_id.include?("$") || @user_id.include?("&") || @user_id.include?("/") || @user_id.include?("#")
       flash.now[:notice] = "Your user id contain special character(s)"
      else
       @id = true
      end #case

      case
      when @password.length < 6
        flash.now[:alert] = "Your password must be at least 6 characters"
      when !(@password.include?("$") || @password.include?("&") || @password.include?("/") || @password.include?("#"))
        flash.now[:alert] = "Your password must contain a special character"
      else
        @psw = true
      end #case

    #  end #if
    #   else
    #   flash.now[:notice] = "Type in a user name and password"
    end #if
    if @id && @psw
      flash.now[:credentials] = "Your credentials are good!!"
    end
   end #check
end
