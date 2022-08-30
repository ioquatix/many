require 'socket'

n = 0

socks = []

Socket.tcp_server_sockets(12345){|accept_socks|
  socks = accept_socks
  accept_socks_set = Set.new(accept_socks)

  while rs = IO.select(socks)
    # pp rs
    rs[0].each{|s|
      case s
      when accept_socks_set
        new_sock, addr_info = s.accept
        new_sock.puts 'connected'
        socks << new_sock
      else
        begin
          line = s.gets
        rescue Errno::ECONNRESET
        end

        if line
          socks[2..].each{|ws| ws.puts line}
        else
          socks.delete s
        end
      end
    }
  end
}
