class ArticlesController < ApplicationController

  def show
    # byebug
    # @article = Article.find(params[:id]) #params send id in hash format
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
    # render plain: @article.inspect # display to screen
      flash[:notice] = "Article was created successfully"
      redirect_to @article
    # = redirect_to article_path(@article)
    # explain: rails extract id from article and form article path
    else
      render 'new'
    end
  end

end