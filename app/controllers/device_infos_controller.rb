class DeviceInfosController < ApplicationController
  def create
    device = Device.create(user_id: current_user.id, token: params[:token], platform: params[:platform])
  end
end
