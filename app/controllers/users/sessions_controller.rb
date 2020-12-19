class Users::SessionsController < Devise::SessionsController
    respond_to :html, :json
    
    def new
      @user = User.new
    end
end