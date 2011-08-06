# Load Testing of Webservers on Rubinius

bundle exec rackup -s webrick -p 4000 -E production

bundle exec rackup -s mongrel -p 5000 -E production

bundle exec rackup -s thin -p 6000 -E production

bundle exec rainbows -p 7000 -E production -c rainbows\_threadspawn.rb

bundle exec rainbows -p 8000 -E production -c rainbows\_threadpool.rb

bundle exec rainbows -p 9000 -E production -c rainbows\_em.rb

ab -c 10 -n 10 http://localhost:pick\_a\_port

ab -c 70 -n 5000 http://localhost:pick\_a\_port
