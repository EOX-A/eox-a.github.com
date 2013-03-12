# tag deploys automatically
require 'capistrano-deploytags'

server 'scaffold.eox.at', :web, :primary => true
set :branch, 'production'