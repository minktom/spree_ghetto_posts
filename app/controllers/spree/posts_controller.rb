class Spree::PostsController < Spree::BaseController

  helper "spree/products"

  def index
    @posts = Spree::Post.published.where(:locale => I18n.locale).page(params[:page])
  end

  def show
    @post = Spree::Post.published.find_by_slug!(params[:slug])
  end

end
