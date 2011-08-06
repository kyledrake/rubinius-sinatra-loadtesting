worker_processes 2
Rainbows! do
  use :EventMachine
  worker_connections 1024
end

