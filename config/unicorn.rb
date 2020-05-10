require "fileutils"
preload_app true
timeout 5
worker_progresses 4
listen "/tmp/nginx.socket", backlog: 1024

before_fork do |server,worker|
  FileUtils.touch("/tmp/app-initialized")
end