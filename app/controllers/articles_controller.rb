class ArticlesController < ApplicationController

def show
  # byebug
  # @article = Article.find(params[:id]) #params send id in hash format
  @article = Article.find(params[:id])
end

end