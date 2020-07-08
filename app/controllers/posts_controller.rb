class PostsController < ApplicationController

    def index
        @posts=Post.all
    end

    def show
        @post=Post.find(params[:id])
    end


    def new

    end 

    
    def create
        @post =Post.new(param_posts)
        @post.save
        redirect_to @post
    end

    private def param_posts
        params.require(:post).permit(:title,:body)
    end
end
