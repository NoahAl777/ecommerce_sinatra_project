class PostsController < ApplicationController

  get '/posts' do
    "A list of publicly available posts"
  end

  get '/posts/new' do
    #Checking if they are logged in
    if !logged_in?
      redirect "/login" #Redirecting if they aren't
    else 
      "A new post form" #Rendering if they are
    end
  end

  get '/posts/:id/edit' do
    #Checking if they are logged in
    if !logged_in?
      redirect "/login" #Redirecting if they aren't
    else 
      "A edit post form" #Rendering if they are
    end
  end

end