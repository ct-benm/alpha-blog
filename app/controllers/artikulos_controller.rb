class ArtikulosController < ApplicationController
  def show
    @artikulo = Artikulo.find(params[:id])
  end

  def index 
    @artikulos = Artikulo.all
  end

end