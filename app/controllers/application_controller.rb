class ApplicationController < ActionController::Base
  
  def home
    
    
    ActionMailer::Base.mail(from:"me@example.com", to: "viniciuscmachado22@gmail.com", subject: "Reserva dos Minions", body: "").deliver
    
    
  end
end
