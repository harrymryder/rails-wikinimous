class ArticlesController < ApplicationController
  before_action :find_article, only: [:show]

  def index
    @articles = Article.all
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end
end
