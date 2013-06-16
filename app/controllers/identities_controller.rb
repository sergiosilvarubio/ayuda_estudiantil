class IdentitiesController < ApplicationController
	include IdentitiesHelper

  def index
    	@identities = Identity.all    
    end

	def new
		@identity = env['omniauth.identity']
	end

  # GET /identities/1/edit
  def edit
    @identity = Identity.find(params[:id])
  end

  # PUT /identities/1
  def update
    @identity = Identity.find(params[:id])

         
    #no deberia retornar null 
    if loggedIsAdministrator() 
        back_link = identities_path
    else
        back_link = root_path
    end     
    

    if params[:commit].eql?("Editar")
      if @identity.update_attributes(params[:identity])
        redirect_to back_link, notice: 'Usuario fue editado correctamente.'              
      else
        render action: "edit"        
      end            
    else #boton cancelar
      redirect_to back_link               
    end     
      
    
  end

	def destroy
    @identity = Identity.find(params[:id])
    @identity.destroy
    #usuario es 1 a 1 con identity
    @user = User.find(params[:id]) 
    @user.destroy
    redirect_to identities_path , notice: 'Usuario eliminado'   
  end


end
