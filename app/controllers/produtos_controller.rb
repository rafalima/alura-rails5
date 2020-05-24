class ProdutosController < ApplicationController

  def index
    @produtos = Produto.order(nome: :desc)
    @produtos_com_desconto = Produto.order(:preco).limit 1
  end

  def create
    produto = params.require(:produto).permit(:nome, :descricao, :quantidade, :preco)
    Produto.create(produto)

    redirect_to root_path
  end

  def destroy
    id = params[:id]
    Produto.destroy(id)

    redirect_to root_path
  end

end
