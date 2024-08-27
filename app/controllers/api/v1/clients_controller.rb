class Api::V1::ClientsController < ActionController::API
  before_action :authenticate_devise_api_token!
  respond_to :json
  def index
    clients = Client.all
    render json: clients
  end

  def show
    client = current_devise_api_user
    render json: client
  end
end