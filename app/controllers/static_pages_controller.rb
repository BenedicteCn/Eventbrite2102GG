class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:secret]

  def index
  end

  def secret
  end

  def about
  end

end
