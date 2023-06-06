class DocumentsController < ApplicationController
  def index
    @docs = current_user.documents.all
  end

  def show
    @doc = Document.find(params[:id])
  end

  def new
    @doc = Document.new
  end

  def create
    @doc = current_user.documents.new(doc_params)
    if @doc.save!
      redirect_to documents_path
    else
      render 'new'
    end
  end

  def edit
    @doc = Document.find(params[:id])
  end

  def update
    @doc = Document.find(params[:id])
    if @doc.update(doc_params)
      redirect_to @doc
    else
      render 'edit'
    end
  end

  def destroy
    @doc = Document.find(params[:id])
    if @doc.destroy
      redirect_to documents_path
    else
      render @doc
    end
  end

  private

  def doc_params
    params.require(:document).permit(:id, :title, :content)
  end
end
