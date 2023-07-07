class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy] # before do methods, perform set_article method first

  
  def show
    # byebug
    # @article = Article.find(params[:id]) #params send id in hash format
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
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

  def edit
  end

  def update
    if @article.update(article_params)
     flash[:notice] = "Article was updated successfully"
     redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private # method below using only in this controller
  
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end

end