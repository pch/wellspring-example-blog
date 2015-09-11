class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.published.order('id desc')
  end

  def show
    @blog_post = BlogPost.published.find_by_slug!(params[:slug])
  end
end
