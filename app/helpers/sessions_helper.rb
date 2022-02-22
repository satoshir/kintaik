module SessionsHelper
  
  def log_in(user)
    session[:user_id] = user.id
  end
  
  def cuttent_user
    if session[:user_id]
       @cuttent_user ||=User.find_by(id: session[:user_id])
    end
  end
end
