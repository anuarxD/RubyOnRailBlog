module Autors
      class PostsController < AutorsController
      before_action :set_post, only: %i[ show edit update destroy ]

      # GET /posts
      def index
        @posts = current_autor.posts
      end

      # GET /posts/1
      def show
      end

      # GET /posts/new
      def new
        @post = current_autor.posts.build
      end

      # GET /posts/1/edit
      def edit
        @content = @post.elementos.build(elemento_tipo: "content")
      end

      # POST /posts
      def create
        @post = current_autor.posts.build(post_params)

        if @post.save
          redirect_to @post, notice: "La publicación se creó con éxito."
        else
          render :new, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /posts/1
      def update
        if @post.update(post_params)
          redirect_to @post, notice: "La publicación se actualizó con éxito."
        else
          render :edit, status: :unprocessable_entity
        end
      end

      # DELETE /posts/1
      def destroy
        @post.destroy
        redirect_to posts_url, notice: "La publicación fue Eliminada con éxito."
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_post
          @post = current_autor.posts.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def post_params
          params.require(:post).permit(:titulo, :titulo_descripcion)
        end
    end
end
