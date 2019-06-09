require 'test_helper'

class ArticleCategoriesConnectionTest < ActionDispatch::IntegrationTest

  def setup
    @user = User.create(username: "Jon", 
                      email: "jon@example.com", 
                      password: "qwerty", 
                      admin: true)
    @article = Article.create(title: "title for article",
                              description: "description for article with category",
                              user_id: @user.id)
    @category = Category.create(name: "category")
  end

  test "should create connection between article and category" do 
    ArticleCategory.create(article_id: @article.id, category_id: @category.id)
    assert_equal(1, ArticleCategory.all.count)
    assert_equal(1, @article.categories.count)
    assert_equal(1, @category.articles.count)
  end 

end