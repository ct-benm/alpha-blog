class ArtikulosController < ApplicationController
  def show
    @artikulo = Artikulo.find(params[:id])
    #byebug
  end
  
end