class ApplicationController < ActionController::Base
  # devise_controllerが実行されたらconfigure_permitted_parametersを実行
  # devise_controllerはログイン機能を使ったときに機能するようなコントローラー
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, key: [:nickname])
  end
end
