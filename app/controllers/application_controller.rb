class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'secret'
  end

  helpers do
    
    def logged_in?
      !!session[:email] #Checks truthiness of logged email, Uses Double Negate to create truth or false object
    end

    def login(email)
      #Is the user who they claim to be
      session[:email] = email #Logs user in after email input
    end

    def logout!
      session.clear #Logs user out by clearing session
      redirect '/posts'
    end
  end
end