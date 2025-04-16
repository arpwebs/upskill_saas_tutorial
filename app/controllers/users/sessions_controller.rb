class Users::SessionsController < Devise::SessionsController
  # Override the default behavior after sign out
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end