class PageController < ApplicationController
    def main
    
        unless params.dig(:name).nil?
        
          email = "Pedido do Cliente " + params[:name] + "."
          
          address = "\nEndereço: Rua " + params[:rua] + ", " + params[:numero] + ", " + params[:bairro] + ", " + params[:cidade] + ", " + params[:estado] + "."
          
          message = "\nO pedido de " + params[:name] + " foi " + "."
            
          email_content = email+address+message
                
          ActionMailer::Base.mail(from:"reservation@minionstore.com", to: "viniciuscmachado22@gmail.com", subject: "Reserva dos Minions", body: email_content).deliver
          
          
        end
    end
end
