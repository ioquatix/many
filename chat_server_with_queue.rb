require 'socket'

# $VERBOSE = true

$m = Mutex.new
$writers = Set.new

def broadcast line
  $m.synchronize{
    $writers.each{|wq|
      wq.push line
    }
  }
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

  wq = Queue.new

  $m.synchronize{
    $writers << wq
  }

  Thread.new n do |n|
    while line = wq.pop
      p [:writer, sock, line] if $VERBOSE
      sock.puts line
    end
  end

  Thread.new n do |n|
    sock.puts 'connected'

    while line = sock.gets
      broadcast line
    end
  rescue Errno::ECONNRESET
  ensure
    p closed: sock if $VERBOSE
    wq.close
    $m.synchronize{
      $writers.delete wq
    }
    sock.close
  end
}
