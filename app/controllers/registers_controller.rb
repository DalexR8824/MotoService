class RegistersController < ApplicationController
 
layout "home"

 def new 

 	@register=Register.new

 end

 def create

 	@register=Register.new(register_params)

 	if @register.save

 		flash[:notice] = "Usuario registrado"

 	else

 		flash[:notice] = "Usuario no registrado"
 	end

 end

 private

 def register_params 
 	params.require(:register).permit(:name, :lastname, :email, :celphone)
 end

end
