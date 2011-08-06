# Load Testing of Webservers on Rubinius

    rackup -s webrick -p 4000 -E production

    rackup -s mongrel -p 4000 -E production

    rackup -s thin -p 4000 -E production

    rainbows -p 4000 -E production -c rainbows_threadspawn.rb

    rainbows -p 4000 -E production -c rainbows_threadpool.rb

    rainbows -p 4000 -E production -c rainbows_em.rb

    unicorn -p 4000 -E production -c unicorn.rb

    ab -c 10 -n 10 http://localhost:4000

    ab -c 70 -n 5000 http://localhost:4000
