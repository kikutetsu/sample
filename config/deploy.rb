lock '3.10.2'

set :application, 'sample'
set :repo_url, 'git@github.com:kikutetsu/sample.git'
set :deploy_to, '/home/deploy/staging'
set :pty, true
set :scm, :git
set :rbenv_ruby, '2.4.3'
set :rbenv_type, :system

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end
end
