class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordNotFound, with: :render_user_not_found

private
def render_user_not_found(exception)
    render json: { error: "#{exception.model} not found" }, status: :not_found
end

end
