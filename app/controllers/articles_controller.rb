class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :destroy]

  def index
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end

    def find_article
      @article = Article.find(params[:id])
    end
end
