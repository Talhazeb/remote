class CustomerController < Devise::SessionsController
  private

  def after_sign_in_path_for(resource)
    customer_search_path # or any other path
  end
end