class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # サインアップ時にnicknameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    # アカウント編集の時にnicknameとintroductionのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :introduction])
  end
end
