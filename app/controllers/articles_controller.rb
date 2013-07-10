class ArticlesController < ApplicationController

  def index
    @articles = Article.order("id desc")
  end

  def new
    @article = Article.new()
  end

  def create
    @article = Article.create(params[:article])
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end
end
