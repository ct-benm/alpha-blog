class ArtikulosController < ApplicationController
  before_action :set_artikulo, only: [:show, :edit, :update, :destroy]


  def show
    #pwede alisin yan to use of methods
    #@artikulo = Artikulo.find(params[:id])
  end

  def index 
    @artikulos = Artikulo.all
  end

  def new
    @artikulo = Artikulo.new
  end

  def create
    #render plain: params[:artikulo]  #check the params being pass

    @artikulo = Artikulo.new(artikulo_params)
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
    #@artikulo = Artikulo.find(params[:id])
  end
  
  def update
    #byebug
    
    #@artikulo = Artikulo.find(params[:id])
    if @artikulo.update(artikulo_params)
      flash[:notice]  = "Ok, na save ko na ung bagong Artikulo!" 
      redirect_to @artikulo
    else
      render 'edit'
    end
  end

  def destroy
    #@artikulo = Artikulo.find(params[:id])
    @artikulo.destroy
    redirect_to artikulos_path 
  end

  #---NOTE this is only at the bottom---------
  private 
  
  def set_artikulo
    @artikulo = Artikulo.find(params[:id])
  end

  def artikulo_params
    params.require(:artikulo).permit(:title, :description)
  end
  #--------------------


end