worker_processes 2
Rainbows! do
  use :ThreadSpawn
  worker_connections 1024
end
