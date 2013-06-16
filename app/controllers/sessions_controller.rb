class SessionsController < ApplicationController

	def new
		
	end

	def create
		user = User.from_omniauth(env["omniauth.auth"])
		session[:user_id] = user.id		
		redirect_to root_url, :notice => "Usuario logueado"
		
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, :notice => "La sesion ha sido cerrada"
	end

	def failure	
		# user = User.from_omniauth(env["omniauth.auth"])
		#uid = user.id
		mensaje = "Uno de los datos es incorrecto"
		redirect_to new_session_path, :notice => mensaje
	end
end
