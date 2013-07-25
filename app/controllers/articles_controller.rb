class ArticlesController < ApplicationController
  before_filter :admin_user!, :except =>[:index,:show]

  def index
    @articles = Article.includes(:category).order("id desc")
  end

  def new
    @categories = Category.all
    @article = Article.new()
  end

  def create
    @article = Article.create(params[:article])
    if @article
      redirect_to articles_path
    else
      @categories = Category.all
      render action: "new"
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end
end
