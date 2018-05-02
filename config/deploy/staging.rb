set :pty, true
server '160.16.52.93', user: 'kikuchi', roles: %w{app db web}

set :linked_dirs, %w{bin log tmp/backup tmp/pids tmp/sockets vendor/bundle}

shared_path = "/home/deploy/staging/shared"
set :unicorn_pid, "#{shared_path}/tmp/pids/unicorn.pid"
set :unicorn_options, -> { "--path /staging" }
set :unicorn_exec, -> { "unicorn_rails" }
