class ApplicationController < ActionController::Base
  
  def home
    
    unless params.dig(:name).nil?
    
      email = "Pedido do Cliente " + params[:name] + "."
      
      address = "\nEndereço: Rua " + params[:rua] + ", " + params[:numero] + ", " + params[:bairro] + ", " + params[:cidade] + ", " + params[:estado] + "."
      
      message = "\nO pedido de " + params[:name] + " foi " + params[:message] + "."
        
      email_content = email+address+message
            
      ActionMailer::Base.mail(from:"me@example.com", to: "12vini34@gmail.com", subject: "Reserva dos Minions", body: email_content).deliver
      
      
    end
    
  end
end
