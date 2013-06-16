module IdentitiesHelper

	def loggedIsAdministrator()
    	idUser = session[:user_id] 
    	if idUser == nil
			return nil
		else			
			identity_logged =  Identity.find(idUser) 		 
			return identity_logged.administrator
		end	
  	end

end


