# tryit-haproxy

## Prerequisites

- Install Ruby Sinatra
```
gem install sinatra
```

- Install HAProxy
```
brew install haproxy
```

## Layer 4 Load Balancing
- Run apps on port 4444 and 5555
```
ruby app.rb -p 4444
ruby app.rb -p 5555
```

- Run
```
haproxy -f tcp.cfg
```

- Access app via `localhost:8888`

## Logs
```
[WARNING] 047/225847 (87818) : Server nodes/server1 is DOWN, reason: Layer4 connection problem, info: "Connection refused", check duration: 0ms. 1 active and 0 backup servers left. 0 sessions active, 0 requeued, 0 remaining in queue.
[WARNING] 047/225857 (87818) : Server nodes/server1 is UP, reason: Layer4 check passed, check duration: 0ms. 2 active and 0 backup servers online. 0 sessions requeued, 0 total in queue.
```

## Layer 7 Load Balancing
- Run apps on port 4444, 5555, 7777, 8888
```
ruby app.rb -p 4444
ruby app.rb -p 5555
ruby app.rb -p 7777
ruby app.rb -p 8888
```

- Run
```
haproxy -f http.cfg
```

- Access app via `localhost:9999/app1` and `localhost:9999/app2`