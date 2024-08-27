class Api::V1::SessionsController < Devise::Api::TokensController
  respond_to :json

  def sign_up
    super
  end

  def sign_in
    super
  end

  private

  def sign_up_params
    params.require(:client).permit(:email, :password, :password_confirmation).to_h
  end

  def sign_in_params
    params.require(:client).permit(:email, :password).to_h
  end

  protected

  def configure_sign_up_params
    
  end

  def configure_sign_in_params
  end
end