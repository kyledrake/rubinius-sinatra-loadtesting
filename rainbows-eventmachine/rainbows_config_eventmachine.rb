worker_processes 1
Rainbows! do
  use :EventMachine
  worker_connections 1024
end
