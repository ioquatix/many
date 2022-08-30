require 'socket'

# $VERBOSE = true

$m = Mutex.new
$cv = Thread::ConditionVariable.new
$ary = []

def broadcast line, tid:
  $m.synchronize do
    $ary << line
    p tid: tid, line: line
    $cv.broadcast
  end
end

def receive from = $ary.size, tid:
  $m.synchronize do
    while true
      to = $ary.size
      a = $ary[from ... to]
      p tid:tid, a:a if $VERBOSE
      a.each{|line| yield line}
      from = to
      $cv.wait($m)
    end
  end
end

Thread.new{
  loop{
    p thread_monitor: Thread.list.size
    sleep 3
  }
} if false

n = 0
Socket.tcp_server_loop(12345){|sock, addr|
  p accept: [addr, sock] if $VERBOSE
  n += 1

  receiver_th = Thread.new n do |n|
    receive tid: n do |line|
      sock.puts line
    end
  end

  Thread.new n do |n|
    sock.puts 'connected'

    while line = sock.gets
      broadcast line, tid: n
    end
  rescue Errno::ECONNRESET
  ensure
    p closed: sock if $VERBOSE
    sock.close
    receiver_th.kill
  end
}
