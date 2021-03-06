class ArticlesController < ApplicationController

  before_action :signed_in_user, only: [:new, :edit, :update,:destroy]

  def index
    # @articles = Article.all.reverse
  end

  def show
    @article = Article.find(params[:id])
    gon.content = @article.content
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to root_path
  end

  private
    def article_params
        params.require(:article).permit(:title,:content)
    end
    
end
