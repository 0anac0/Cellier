class HomeController < ActionController::API

  def index
    @professors = Professor.all
    render json: @professors
  end
end
