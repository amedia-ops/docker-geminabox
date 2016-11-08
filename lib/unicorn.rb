app_root = File.expand_path('../..', __FILE__)

require 'bundler/setup'

working_directory app_root
worker_processes ENV['GEMINABOX_WORKERS_COUNT'] || 2

preload_app true
timeout 30
listen 'unix:/var/run/unicorn.sock', :backlog => 64

pid '/var/run/unicorn.pid'
stderr_path '/dev/stderr'
stdout_path '/dev/stdout'
