module Autors
    class ElementosController < AutorsController
      before_action :set_post
      before_action :set_elemento, only: %i[update destroy ]

            # POST /elementos
      def create
        @elemento = @post.elementos.build(elemento_params)

        if @elemento.save
          notice = nil
        else
         notice = @elemento.errors.full_messages.join(". ") << "."
       end
         redirect_to edit_post_path(@post), notice: notice
      end

      # PATCH/PUT /elementos/1
      def update
        if @elemento.update(elemento_params)
          redirect_to edit_post_path(@elemento.post), notice: "El elemento se actualizó con éxito."
        end
      end

      # DELETE /elementos/1
      def destroy
        @elemento.destroy
        redirect_to elementos_url, notice: "El elemento fue eliminado con éxito."
      end

      private

      def set_post
        @post = current_autor.posts.find(params[:post_id])
      end

        # Use callbacks to share common setup or constraints between actions.
        def set_elemento
          @elemento = @post.elementos.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def elemento_params
          params.require(:elemento).permit(:elemento_tipo, :content)
        end
    end
end
