class Spree::PostsController < Spree::BaseController

  def index
    @posts = Spree::Post.published
  end

  def show
    @post = Spree::Post.published.find_by_slug!(params[:slug])
  end

end
