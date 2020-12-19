class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  # def create_or_get_token(service,password)
  #   api_key = ApiKey.find_or_initialize_by(service: service)
  #   api_key.save if api_key.access_token.nil?
  #   api_key.access_token
  # end

  def after_sign_in_path_for(resource_or_scope)
      causes_path
     end
  end

#   def after_sign_out_path_for(resource_or_scope)
#         new_user_session_path
#      end
#   end
# end

