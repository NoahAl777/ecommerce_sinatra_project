#This File defines the stack of the web app

#Requires an environment
require_relative './config/environment'

require './config/environment'

use Rack::MethodOverride
# use Rack::Session::Cookie
use SessionsController
use PostsController
use UsersController
run ApplicationController
