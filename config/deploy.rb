set :stages, %w(production staging)
set :default_stage, "staging"
require 'capistrano/ext/multistage'

set :application, "scaffold.eox.at"
set :user, "locherm"
set :group, "www-data"

set :scm, :none
set :repository, "_site"
set(:deploy_to) { "/var/www/#{application}/#{stage}" }
set :deploy_via, :copy
set :copy_compression, :gzip
set :use_sudo, false

ssh_options[:forward_agent] = true

before 'deploy:update', 'deploy:update_jekyll'
namespace :deploy do
  [:start, :stop, :restart, :finalize_update].each do |t|
    desc "#{t} task is a no-op with jekyll"
    task t, :roles => :app do ; end
  end

  desc 'Run jekyll to update site before uploading'
  task :update_jekyll do
    %(rm -rf _site/*)
    %(&& jekyll)
  end
end