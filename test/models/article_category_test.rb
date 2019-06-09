=begin
require 'test_helper'

class ArticleCategoryTest < ActiveSupport::TestCase

  def setup
  	@article = Article.create(title: "title for article",
  							  description: "description for article with category")
  	@category = Category.create(name: "category")
  	@article_category = ArticleCategory.create(article_id: @article.id,
  										category_id: @category.id)
  end

  test "should create connection between article and category" do 
  	assert_equal(1, ArticleCategory.all.count)
  	#assert_equal(1, @article.categories.count)
  	#assert_equal(1, @category.articles.count)
  end



end
=end
