#This File creates an environment for the application

#Allows us to bundle install
require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/development.sqlite"
  )


require_all 'app' #Loads all files in app