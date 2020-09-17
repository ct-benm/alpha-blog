class ArtikulosController < ApplicationController
  def show
    @artikulo = Artikulo.find(params[:id])
  end

  def index 
    @artikulos = Artikulo.all
  end

  def new
    @artikulo = Artikulo.new
  end

  def create
    #render plain: params[:artikulo]  #check the params being pass

    @artikulo = Artikulo.new(params.require(:artikulo).permit(:title, :description))
    #render plain: @artikulo.inspect  #check the object

    if @artikulo.save  
      flash[:notice]  = "Galing, nakagawa na Artikulo!" 

      #redirect_to artikulo_path(@artikulo)  #ver1
      redirect_to @artikulo    #ver 2
    else
      render 'new'      
    end

  end

  def edit
    @artikulo = Artikulo.find(params[:id])
  end
  
  def update
    #byebug
    @artikulo = Artikulo.find(params[:id])
    if @artikulo.update(params.require(:artikulo).permit(:title, :description))
      flash[:notice]  = "Ok, na save ko na ung bagong Artikulo!" 
      redirect_to @artikulo
    else
      render 'edit'
    end

  end

end