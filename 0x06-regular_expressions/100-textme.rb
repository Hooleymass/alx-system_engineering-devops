#!/usr/bin/env ruby

log_entry = ARGV[0]

matches = log_entry.scan(/\[from:(\S+)\] \[to:(\S+)\] \[flags:(\S+:\S+:\S+:\S+:\S+)\]/)

if matches.any?
  sender_number, receiver_number, flags = matches[0]
  puts "#{sender_number},#{receiver_number},#{flags}"
else
  puts "No match found."
end

