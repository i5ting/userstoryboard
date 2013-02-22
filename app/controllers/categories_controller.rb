class CategoriesController < ApplicationController
  def create
      @project = Project.find(params[:project_id])
      @category = @project.categories.create(params[:category])
      redirect_to project_path(@project)
  end
  
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
  
end
