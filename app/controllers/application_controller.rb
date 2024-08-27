class ApplicationController < ActionController::Base
  protected

  def devise_parameter_sanitizer
    if resource_class == Company
      Company::ParameterSanitizer.new(Company, :company, params)
    else
      super
    end
  end
end
