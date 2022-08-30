#!/usr/bin/env ruby

require 'socket'

n = ARGV.shift.to_i
raise unless n > 0

ss = nil
require 'benchmark'
Benchmark.bm(30){|x|
  x.report("Connect #{n}"){
    ss = n.times.map{|i|
      puts i
      begin
        Socket.tcp('localhost', 12345)
      rescue
        puts "trying to make #{i}th"
        raise
      end
    }
  }
  x.report("Get ack from #{n} conn"){
  ss.each{|s|
      line = s.gets.strip
      raise "expect ack but get #{line.inspect}" if line != "connected"
    }
  }
  x.report("Put to a socket"){
    ss[n/2].puts 'hello'
  }
  x.report("Get from #{n} connections"){
    ss.each.with_index{|s, i|
      # p [i, s]
      line = s.gets
      unless line
        raise "Disconnected: #{s}"
      end
    }
  }
}

