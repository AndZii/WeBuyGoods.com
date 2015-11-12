class MainController < ApplicationController

  before_action :set_email

  def home
    @posts = Post.where(:label => "news").first(10).reverse!
  end

  def archive

  end

  def contacts

  end

  def buy
    @items = Item.all
  end

  def about_us
    @posts = Post.where(:label => "review").first(10).reverse!
  end

  def show_post
    @post = Post.find_by_title(params[:title])
  end

  def save_email
    @email = Email.new(email_params)
    if @email.save
      redirect_to root_path, notice: 'Post was successfully created.'
    else
      @posts = Post.all
      render "home"
    end
  end

  private

  def set_email
    @email = Email.new
    @featured_posts = Post.where("featured = 1")
    @post = Post.new
  end

  def email_params
    params.require(:email).permit(:email)
  end

end
