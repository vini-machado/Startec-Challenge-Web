class PageController < ApplicationController
    def main
    
        unless params.dig(:name).nil?
        
          email = "Pedido do Cliente " + params[:name] + ".\nContato: " + params[:email]
          
          address = "\nEndereço: Rua " + params[:rua] + ", " + params[:numero] + ", " + params[:bairro] + ", " + params[:cidade] + ", " + params[:estado] + "."
          
          products = [params[:bob], params[:tim], params[:dave], params[:hawaii], params[:vamp], params[:ac]]

          
          reservation = {
              "Minion Bob Falante" => products[0],
              "Minion Tim" => products[1],
              "Minion Dave" => products[2],
              "Minions Havaianos" => products[3],
              "Minion Vampiro" => products[4],
              "Minion Action Figures" => products[5],
          }
          
          pedido = ""
          
          reservation.each do |key, value|
            if value == "0" || value == ""
              next
            else
             pedido = pedido + "\t#{key} : #{value}\n"
            end        
          end 
          
          if pedido == ""
            message = "Não houve pedido"
            
          else
            message = "\nO pedido de " + params[:name] + " foi:\n " + pedido + "."
          
          end  
          email_content = email+address+message
                
          ActionMailer::Base.mail(from:"reservation@minionstore.com", to: "viniciuscmachado22@gmail.com", subject: "Reserva dos Minions", body: email_content).deliver
          
         
          render 'page/js'
          
          
        end
    end
end
