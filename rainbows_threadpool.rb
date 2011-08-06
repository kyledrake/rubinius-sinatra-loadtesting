worker_processes 2
Rainbows! do
  use :ThreadPool
  worker_connections 1024
end

