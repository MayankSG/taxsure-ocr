class SessionsController < Devise::SessionsController
  skip_before_filter :verify_signed_out_user, only: :destroy
end