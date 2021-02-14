class PostsController < ApplicationController
    before_action :authenticate_post!, except: [:index]

    def index
        @posts = Post.all.order("created_at DESC")
        @posts = Post.new
    end
    
    def new
        @posts = Post.new
    end

    def create
        @posts = Post.new(post_params)
    

        if @posts.save
            redirect_to root_path, notice: "Post was successfully created." 
          else
            redirect_to root_path, notice: "Post failed."
          end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:post)
    end
end