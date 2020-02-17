# tryit-haproxy

## Prerequisites

- Install Ruby Sinatra
```
gem install sinatra
```

- Run apps on port 4444 and 5555
```
ruby app.rb -p 4444
ruby app.rb -p 5555
```

- Install HAProxy
```
brew install haproxy
```

- Then run
```
haproxy -f tcp.cfg
```

## Log
```
[WARNING] 047/225847 (87818) : Server nodes/server1 is DOWN, reason: Layer4 connection problem, info: "Connection refused", check duration: 0ms. 1 active and 0 backup servers left. 0 sessions active, 0 requeued, 0 remaining in queue.
[WARNING] 047/225857 (87818) : Server nodes/server1 is UP, reason: Layer4 check passed, check duration: 0ms. 2 active and 0 backup servers online. 0 sessions requeued, 0 total in queue.
```